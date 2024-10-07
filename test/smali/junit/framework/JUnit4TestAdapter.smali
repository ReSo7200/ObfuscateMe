.class public Ljunit/framework/JUnit4TestAdapter;
.super Ljava/lang/Object;
.source "JUnit4TestAdapter.java"

# interfaces
.implements Ljunit/framework/Test;
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Orderable;
.implements Lorg/junit/runner/Describable;


# instance fields
.field private final fCache:Ljunit/framework/JUnit4TestAdapterCache;

.field private final fNewTestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final fRunner:Lorg/junit/runner/Runner;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 36
    .local p1, "newTestClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljunit/framework/JUnit4TestAdapterCache;->getDefault()Ljunit/framework/JUnit4TestAdapterCache;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljunit/framework/JUnit4TestAdapter;-><init>(Ljava/lang/Class;Ljunit/framework/JUnit4TestAdapterCache;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljunit/framework/JUnit4TestAdapterCache;)V
    .locals 1
    .param p2, "cache"    # Ljunit/framework/JUnit4TestAdapterCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljunit/framework/JUnit4TestAdapterCache;",
            ")V"
        }
    .end annotation

    .line 39
    .local p1, "newTestClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Ljunit/framework/JUnit4TestAdapter;->fCache:Ljunit/framework/JUnit4TestAdapterCache;

    .line 41
    iput-object p1, p0, Ljunit/framework/JUnit4TestAdapter;->fNewTestClass:Ljava/lang/Class;

    .line 42
    invoke-static {p1}, Lorg/junit/runner/Request;->classWithoutSuiteMethod(Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    iput-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fRunner:Lorg/junit/runner/Runner;

    .line 43
    return-void
.end method

.method private isIgnored(Lorg/junit/runner/Description;)Z
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 83
    const-class v0, Lorg/junit/Ignore;

    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeIgnored(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;
    .locals 5
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 69
    invoke-direct {p0, p1}, Ljunit/framework/JUnit4TestAdapter;->isIgnored(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->childlessCopy()Lorg/junit/runner/Description;

    move-result-object v0

    .line 73
    .local v0, "result":Lorg/junit/runner/Description;
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Description;

    .line 74
    .local v2, "each":Lorg/junit/runner/Description;
    invoke-direct {p0, v2}, Ljunit/framework/JUnit4TestAdapter;->removeIgnored(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object v3

    .line 75
    .local v3, "child":Lorg/junit/runner/Description;
    invoke-virtual {v3}, Lorg/junit/runner/Description;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    invoke-virtual {v0, v3}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    .line 78
    .end local v2    # "each":Lorg/junit/runner/Description;
    .end local v3    # "child":Lorg/junit/runner/Description;
    :cond_1
    goto :goto_0

    .line 79
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public countTestCases()I
    .locals 1

    .line 46
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fRunner:Lorg/junit/runner/Runner;

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->testCount()I

    move-result v0

    return v0
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fRunner:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 2

    .line 64
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fRunner:Lorg/junit/runner/Runner;

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    .line 65
    .local v0, "description":Lorg/junit/runner/Description;
    invoke-direct {p0, v0}, Ljunit/framework/JUnit4TestAdapter;->removeIgnored(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1
.end method

.method public getTestClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fNewTestClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getTests()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fCache:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {p0}, Ljunit/framework/JUnit4TestAdapter;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/JUnit4TestAdapterCache;->asTestList(Lorg/junit/runner/Description;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public order(Lorg/junit/runner/manipulation/Orderer;)V
    .locals 1
    .param p1, "orderer"    # Lorg/junit/runner/manipulation/Orderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fRunner:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Orderer;->apply(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;

    .line 50
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fRunner:Lorg/junit/runner/Runner;

    iget-object v1, p0, Ljunit/framework/JUnit4TestAdapter;->fCache:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {v1, p1, p0}, Ljunit/framework/JUnit4TestAdapterCache;->getNotifier(Ljunit/framework/TestResult;Ljunit/framework/JUnit4TestAdapter;)Lorg/junit/runner/notification/RunNotifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/junit/runner/Runner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    .line 51
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .locals 1
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;

    .line 96
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fRunner:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->fNewTestClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
