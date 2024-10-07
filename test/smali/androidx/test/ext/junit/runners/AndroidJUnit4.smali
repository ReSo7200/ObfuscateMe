.class public final Landroidx/test/ext/junit/runners/AndroidJUnit4;
.super Lorg/junit/runner/Runner;
.source "AndroidJUnit4.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidJUnit4"


# instance fields
.field private final delegate:Lorg/junit/runner/Runner;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "klass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 55
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 56
    invoke-static {p1}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->loadRunner(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    .line 57
    return-void
.end method

.method private static getInitializationErrorDetails(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/String;
    .locals 9
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwable",
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 133
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "innerCause":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 136
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 137
    const-string v2, ""

    return-object v2

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 141
    .local v2, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const-class v3, Lorg/junit/runners/model/InitializationError;

    if-ne v2, v3, :cond_1

    .line 142
    move-object v3, v1

    check-cast v3, Lorg/junit/runners/model/InitializationError;

    .line 143
    .local v3, "initializationError":Lorg/junit/runners/model/InitializationError;
    invoke-virtual {v3}, Lorg/junit/runners/model/InitializationError;->getCauses()Ljava/util/List;

    move-result-object v4

    .line 144
    .local v4, "testClassProblemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    nop

    .line 147
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 145
    const-string v6, "Test class %s is malformed. (%s problems):\n"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    .line 149
    .local v6, "testClassProblem":Ljava/lang/Throwable;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .end local v6    # "testClassProblem":Ljava/lang/Throwable;
    goto :goto_0

    .line 152
    .end local v3    # "initializationError":Lorg/junit/runners/model/InitializationError;
    .end local v4    # "testClassProblemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getRunnerClassName()Ljava/lang/String;
    .locals 3

    .line 60
    const-string v0, "android.junit.runner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "runnerClassName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 62
    const-string v1, "java.runtime.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "org.robolectric.RobolectricTestRunner"

    invoke-static {v1}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->hasClass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    return-object v1

    .line 66
    :cond_0
    const-string v1, "androidx.test.internal.runner.junit4.AndroidJUnit4ClassRunner"

    return-object v1

    .line 69
    :cond_1
    return-object v0
.end method

.method private static hasClass(Ljava/lang/String;)Z
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return v0
.end method

.method private static loadRunner(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 81
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->getRunnerClassName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "runnerClassName":Ljava/lang/String;
    invoke-static {p0, v0}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->loadRunner(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Runner;

    move-result-object v1

    return-object v1
.end method

.method private static loadRunner(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Runner;
    .locals 6
    .param p1, "runnerClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testClass",
            "runnerClassName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 89
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 91
    .local v0, "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 94
    const-string v3, "Delegate runner %s for AndroidJUnit4 could not be found.\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2, v1}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    const/4 v1, 0x0

    .line 101
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/junit/runner/Runner;>;"
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 109
    goto :goto_1

    .line 102
    :catch_1
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 104
    const-string v4, "Delegate runner %s for AndroidJUnit4 requires a public constructor that takes a Class<?>.\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3, v2}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    :try_start_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Runner;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    .line 119
    :catch_2
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2, p0}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->getInitializationErrorDetails(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "details":Ljava/lang/String;
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v4

    .line 122
    const-string v5, "Failed to instantiate test runner %s\n%s\n"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-static {v4, v2}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 116
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "details":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/InstantiationException;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 118
    const-string v4, "Failed to instantiate test runner %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v3, v2}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_2

    .line 113
    :catch_4
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/IllegalAccessException;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 115
    const-string v4, "Illegal constructor access for test runner %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v3, v2}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    nop

    .line 124
    :goto_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Should never reach here"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "details"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "details",
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    check-cast v0, Lorg/junit/runner/manipulation/Filterable;

    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Filterable;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 168
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1
    .param p1, "runNotifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runNotifier"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    invoke-virtual {v0, p1}, Lorg/junit/runner/Runner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    .line 163
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .locals 1
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sorter"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    check-cast v0, Lorg/junit/runner/manipulation/Sortable;

    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Sortable;->sort(Lorg/junit/runner/manipulation/Sorter;)V

    .line 173
    return-void
.end method
