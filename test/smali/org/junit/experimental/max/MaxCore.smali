.class public Lorg/junit/experimental/max/MaxCore;
.super Ljava/lang/Object;
.source "MaxCore.java"


# static fields
.field private static final MALFORMED_JUNIT_3_TEST_CLASS_PREFIX:Ljava/lang/String; = "malformed JUnit 3 test class: "


# instance fields
.field private final history:Lorg/junit/experimental/max/MaxHistory;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "storedResults"    # Ljava/io/File;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/junit/experimental/max/MaxHistory;->forFolder(Ljava/io/File;)Lorg/junit/experimental/max/MaxHistory;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/experimental/max/MaxCore;->history:Lorg/junit/experimental/max/MaxHistory;

    .line 56
    return-void
.end method

.method private buildRunner(Lorg/junit/runner/Description;)Lorg/junit/runner/Runner;
    .locals 4
    .param p1, "each"    # Lorg/junit/runner/Description;

    .line 124
    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestSuite with 0 tests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lorg/junit/runners/Suite;->emptySuite()Lorg/junit/runner/Runner;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "malformed JUnit 3 test class: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lorg/junit/internal/runners/JUnit38ClassRunner;

    new-instance v1, Ljunit/framework/TestSuite;

    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxCore;->getMalformedTestClass(Lorg/junit/runner/Description;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lorg/junit/internal/runners/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    return-object v0

    .line 134
    :cond_1
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v0

    .line 135
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "methodName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 140
    invoke-static {v0}, Lorg/junit/runner/Request;->aClass(Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v2

    return-object v2

    .line 142
    :cond_2
    invoke-static {v0, v1}, Lorg/junit/runner/Request;->method(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v2

    return-object v2

    .line 136
    .end local v1    # "methodName":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t build a runner from description ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructLeafRequest(Ljava/util/List;)Lorg/junit/runner/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;)",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 106
    .local p1, "leaves":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "runners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Runner;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Description;

    .line 108
    .local v2, "each":Lorg/junit/runner/Description;
    invoke-direct {p0, v2}, Lorg/junit/experimental/max/MaxCore;->buildRunner(Lorg/junit/runner/Description;)Lorg/junit/runner/Runner;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "each":Lorg/junit/runner/Description;
    :cond_0
    new-instance v1, Lorg/junit/experimental/max/MaxCore$1;

    invoke-direct {v1, p0, v0}, Lorg/junit/experimental/max/MaxCore$1;-><init>(Lorg/junit/experimental/max/MaxCore;Ljava/util/List;)V

    return-object v1
.end method

.method private findLeaves(Lorg/junit/runner/Request;)Ljava/util/List;
    .locals 3
    .param p1, "request"    # Lorg/junit/runner/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Request;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    invoke-virtual {p1}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lorg/junit/experimental/max/MaxCore;->findLeaves(Lorg/junit/runner/Description;Lorg/junit/runner/Description;Ljava/util/List;)V

    .line 165
    return-object v0
.end method

.method private findLeaves(Lorg/junit/runner/Description;Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 2
    .param p1, "parent"    # Lorg/junit/runner/Description;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    invoke-virtual {p2}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p2}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "warning(junit.framework.TestSuite$1)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "malformed JUnit 3 test class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {p2}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    .line 177
    .local v1, "each":Lorg/junit/runner/Description;
    invoke-direct {p0, p2, v1, p3}, Lorg/junit/experimental/max/MaxCore;->findLeaves(Lorg/junit/runner/Description;Lorg/junit/runner/Description;Ljava/util/List;)V

    .end local v1    # "each":Lorg/junit/runner/Description;
    goto :goto_0

    .line 180
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void
.end method

.method public static forFolder(Ljava/lang/String;)Lorg/junit/experimental/max/MaxCore;
    .locals 1
    .param p0, "folderName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/junit/experimental/max/MaxCore;->storedLocally(Ljava/io/File;)Lorg/junit/experimental/max/MaxCore;

    move-result-object v0

    return-object v0
.end method

.method private getMalformedTestClass(Lorg/junit/runner/Description;)Ljava/lang/Class;
    .locals 3
    .param p1, "each"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "malformed JUnit 3 test class: "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static storedLocally(Ljava/io/File;)Lorg/junit/experimental/max/MaxCore;
    .locals 1
    .param p0, "storedResults"    # Ljava/io/File;

    .line 49
    new-instance v0, Lorg/junit/experimental/max/MaxCore;

    invoke-direct {v0, p0}, Lorg/junit/experimental/max/MaxCore;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .line 64
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/junit/runner/Request;->aClass(Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/experimental/max/MaxCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;
    .locals 1
    .param p1, "request"    # Lorg/junit/runner/Request;

    .line 74
    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/junit/experimental/max/MaxCore;->run(Lorg/junit/runner/Request;Lorg/junit/runner/JUnitCore;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/Request;Lorg/junit/runner/JUnitCore;)Lorg/junit/runner/Result;
    .locals 1
    .param p1, "request"    # Lorg/junit/runner/Request;
    .param p2, "core"    # Lorg/junit/runner/JUnitCore;

    .line 88
    iget-object v0, p0, Lorg/junit/experimental/max/MaxCore;->history:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0}, Lorg/junit/experimental/max/MaxHistory;->listener()Lorg/junit/runner/notification/RunListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/junit/runner/JUnitCore;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/junit/experimental/max/MaxCore;->sortRequest(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Runner;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public sortRequest(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;
    .locals 2
    .param p1, "request"    # Lorg/junit/runner/Request;

    .line 96
    instance-of v0, p1, Lorg/junit/internal/requests/SortingRequest;

    if-eqz v0, :cond_0

    .line 98
    return-object p1

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxCore;->findLeaves(Lorg/junit/runner/Request;)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "leaves":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    iget-object v1, p0, Lorg/junit/experimental/max/MaxCore;->history:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v1}, Lorg/junit/experimental/max/MaxHistory;->testComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    invoke-direct {p0, v0}, Lorg/junit/experimental/max/MaxCore;->constructLeafRequest(Ljava/util/List;)Lorg/junit/runner/Request;

    move-result-object v1

    return-object v1
.end method

.method public sortedLeavesForTest(Lorg/junit/runner/Request;)Ljava/util/List;
    .locals 1
    .param p1, "request"    # Lorg/junit/runner/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Request;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lorg/junit/experimental/max/MaxCore;->sortRequest(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/experimental/max/MaxCore;->findLeaves(Lorg/junit/runner/Request;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
