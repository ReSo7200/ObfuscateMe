.class public Ljunit/framework/JUnit4TestAdapterCache;
.super Ljava/util/HashMap;
.source "JUnit4TestAdapterCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lorg/junit/runner/Description;",
        "Ljunit/framework/Test;",
        ">;"
    }
.end annotation


# static fields
.field private static final fInstance:Ljunit/framework/JUnit4TestAdapterCache;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljunit/framework/JUnit4TestAdapterCache;

    invoke-direct {v0}, Ljunit/framework/JUnit4TestAdapterCache;-><init>()V

    sput-object v0, Ljunit/framework/JUnit4TestAdapterCache;->fInstance:Ljunit/framework/JUnit4TestAdapterCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static getDefault()Ljunit/framework/JUnit4TestAdapterCache;
    .locals 1

    .line 18
    sget-object v0, Ljunit/framework/JUnit4TestAdapterCache;->fInstance:Ljunit/framework/JUnit4TestAdapterCache;

    return-object v0
.end method


# virtual methods
.method public asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 22
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isSuite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->createTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->createTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljunit/framework/JUnit4TestAdapterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/Test;

    return-object v0
.end method

.method public asTestList(Lorg/junit/runner/Description;)Ljava/util/List;
    .locals 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")",
            "Ljava/util/List<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljunit/framework/Test;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "returnThis":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/Test;>;"
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Description;

    .line 71
    .local v2, "child":Lorg/junit/runner/Description;
    invoke-virtual {p0, v2}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "child":Lorg/junit/runner/Description;
    :cond_1
    return-object v0
.end method

.method createTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;
    .locals 4
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 33
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljunit/framework/JUnit4TestCaseFacade;

    invoke-direct {v0, p1}, Ljunit/framework/JUnit4TestCaseFacade;-><init>(Lorg/junit/runner/Description;)V

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "suite":Ljunit/framework/TestSuite;
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Description;

    .line 38
    .local v2, "child":Lorg/junit/runner/Description;
    invoke-virtual {p0, v2}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .end local v2    # "child":Lorg/junit/runner/Description;
    goto :goto_0

    .line 40
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getNotifier(Ljunit/framework/TestResult;Ljunit/framework/JUnit4TestAdapter;)Lorg/junit/runner/notification/RunNotifier;
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "adapter"    # Ljunit/framework/JUnit4TestAdapter;

    .line 45
    new-instance v0, Lorg/junit/runner/notification/RunNotifier;

    invoke-direct {v0}, Lorg/junit/runner/notification/RunNotifier;-><init>()V

    .line 46
    .local v0, "notifier":Lorg/junit/runner/notification/RunNotifier;
    new-instance v1, Ljunit/framework/JUnit4TestAdapterCache$1;

    invoke-direct {v1, p0, p1}, Ljunit/framework/JUnit4TestAdapterCache$1;-><init>(Ljunit/framework/JUnit4TestAdapterCache;Ljunit/framework/TestResult;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 62
    return-object v0
.end method
