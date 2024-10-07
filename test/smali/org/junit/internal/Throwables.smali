.class public final Lorg/junit/internal/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/Throwables$State;
    }
.end annotation


# static fields
.field private static final REFLECTION_METHOD_NAME_PREFIXES:[Ljava/lang/String;

.field private static final TEST_FRAMEWORK_METHOD_NAME_PREFIXES:[Ljava/lang/String;

.field private static final TEST_FRAMEWORK_TEST_METHOD_NAME_PREFIXES:[Ljava/lang/String;

.field private static final getSuppressed:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 108
    invoke-static {}, Lorg/junit/internal/Throwables;->initGetSuppressed()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/Throwables;->getSuppressed:Ljava/lang/reflect/Method;

    .line 230
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.junit.runner."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "org.junit.runners."

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "org.junit.experimental.runners."

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "org.junit.internal."

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "junit.extensions"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "junit.framework"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "junit.runner"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "junit.textui"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sput-object v0, Lorg/junit/internal/Throwables;->TEST_FRAMEWORK_METHOD_NAME_PREFIXES:[Ljava/lang/String;

    .line 241
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "org.junit.internal.StackTracesTest"

    aput-object v1, v0, v2

    sput-object v0, Lorg/junit/internal/Throwables;->TEST_FRAMEWORK_TEST_METHOD_NAME_PREFIXES:[Ljava/lang/String;

    .line 250
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "sun.reflect."

    aput-object v1, v0, v2

    const-string v1, "java.lang.reflect."

    aput-object v1, v0, v3

    const-string v1, "jdk.internal.reflect."

    aput-object v1, v0, v4

    const-string v1, "org.junit.rules.RunRules.<init>("

    aput-object v1, v0, v5

    const-string v1, "org.junit.rules.RunRules.applyAll("

    aput-object v1, v0, v6

    const-string v1, "org.junit.runners.RuleContainer.apply("

    aput-object v1, v0, v7

    const-string v1, "junit.framework.TestCase.runBare("

    aput-object v1, v0, v8

    sput-object v0, Lorg/junit/internal/Throwables;->REFLECTION_METHOD_NAME_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 21
    invoke-static {p0}, Lorg/junit/internal/Throwables;->isTestFrameworkMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 21
    invoke-static {p0}, Lorg/junit/internal/Throwables;->isReflectionMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static appendStackTraceLines(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "destBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 165
    .local p0, "stackTraceLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "stackTraceLine":Ljava/lang/String;
    const-string v2, "%s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stackTraceLine":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static asReversedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 171
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lorg/junit/internal/Throwables$1;

    invoke-direct {v0, p0}, Lorg/junit/internal/Throwables$1;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static getCauseStackTraceLines(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 6
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/junit/internal/Throwables;->hasSuppressed(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    :cond_0
    invoke-static {p0}, Lorg/junit/internal/Throwables;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "fullTrace":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "causedByLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 140
    const-string v3, "Caused by: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Suppressed: "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_3

    .line 143
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :cond_3
    return-object v2

    .line 150
    .end local v4    # "line":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 148
    :catch_0
    move-exception v3

    .line 153
    .end local v0    # "fullTrace":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "causedByLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 157
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 158
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 159
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 61
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 62
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTrimmedStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 74
    invoke-static {p0}, Lorg/junit/internal/Throwables;->getTrimmedStackTraceLines(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "trimmedStackTraceLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p0}, Lorg/junit/internal/Throwables;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lorg/junit/internal/Throwables;->appendStackTraceLines(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 81
    invoke-static {p0}, Lorg/junit/internal/Throwables;->getCauseStackTraceLines(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/junit/internal/Throwables;->appendStackTraceLines(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getTrimmedStackTraceLines(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 10
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "stackTraceElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 89
    .local v1, "linesToInclude":I
    sget-object v2, Lorg/junit/internal/Throwables$State;->PROCESSING_OTHER_CODE:Lorg/junit/internal/Throwables$State;

    .line 90
    .local v2, "state":Lorg/junit/internal/Throwables$State;
    invoke-static {v0}, Lorg/junit/internal/Throwables;->asReversedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StackTraceElement;

    .line 91
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v2, v4}, Lorg/junit/internal/Throwables$State;->processStackTraceElement(Ljava/lang/StackTraceElement;)Lorg/junit/internal/Throwables$State;

    move-result-object v2

    .line 92
    sget-object v5, Lorg/junit/internal/Throwables$State;->DONE:Lorg/junit/internal/Throwables$State;

    if-ne v2, v5, :cond_2

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v5, "trimmedLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v6, 0x0

    invoke-interface {v0, v6, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StackTraceElement;

    .line 96
    .local v7, "each":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "each":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trimmed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    return-object v5

    .line 103
    .end local v5    # "trimmedLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    nop

    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 105
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static hasSuppressed(Ljava/lang/Throwable;)Z
    .locals 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 119
    sget-object v0, Lorg/junit/internal/Throwables;->getSuppressed:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    return v1

    .line 123
    :cond_0
    :try_start_0
    sget-object v0, Lorg/junit/internal/Throwables;->getSuppressed:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    check-cast v0, [Ljava/lang/Throwable;

    .line 124
    .local v0, "suppressed":[Ljava/lang/Throwable;
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 125
    .end local v0    # "suppressed":[Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Throwable;
    return v1
.end method

.method private static initGetSuppressed()Ljava/lang/reflect/Method;
    .locals 3

    .line 112
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "getSuppressed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isMatchingMethod(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "methodNamePrefixes"    # [Ljava/lang/String;

    .line 265
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 266
    .local v3, "methodNamePrefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    const/4 v4, 0x1

    return v4

    .line 265
    .end local v3    # "methodNamePrefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isReflectionMethod(Ljava/lang/String;)Z
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .line 261
    sget-object v0, Lorg/junit/internal/Throwables;->REFLECTION_METHOD_NAME_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/junit/internal/Throwables;->isMatchingMethod(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isTestFrameworkMethod(Ljava/lang/String;)Z
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .line 246
    sget-object v0, Lorg/junit/internal/Throwables;->TEST_FRAMEWORK_METHOD_NAME_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/junit/internal/Throwables;->isMatchingMethod(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/junit/internal/Throwables;->TEST_FRAMEWORK_TEST_METHOD_NAME_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/junit/internal/Throwables;->isMatchingMethod(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static rethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    throw p0
.end method

.method public static rethrowAsException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/junit/internal/Throwables;->rethrow(Ljava/lang/Throwable;)V

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
