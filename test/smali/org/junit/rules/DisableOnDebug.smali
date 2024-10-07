.class public Lorg/junit/rules/DisableOnDebug;
.super Ljava/lang/Object;
.source "DisableOnDebug.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# instance fields
.field private final debugging:Z

.field private final rule:Lorg/junit/rules/TestRule;


# direct methods
.method public constructor <init>(Lorg/junit/rules/TestRule;)V
    .locals 1
    .param p1, "rule"    # Lorg/junit/rules/TestRule;

    .line 57
    invoke-static {}, Lorg/junit/internal/management/ManagementFactory;->getRuntimeMXBean()Lorg/junit/internal/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Lorg/junit/internal/management/RuntimeMXBean;->getInputArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/junit/rules/DisableOnDebug;-><init>(Lorg/junit/rules/TestRule;Ljava/util/List;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lorg/junit/rules/TestRule;Ljava/util/List;)V
    .locals 1
    .param p1, "rule"    # Lorg/junit/rules/TestRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/rules/TestRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p2, "inputArguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/junit/rules/DisableOnDebug;->rule:Lorg/junit/rules/TestRule;

    .line 70
    invoke-static {p2}, Lorg/junit/rules/DisableOnDebug;->isDebugging(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/junit/rules/DisableOnDebug;->debugging:Z

    .line 71
    return-void
.end method

.method private static isDebugging(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 105
    .local p0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "argument":Ljava/lang/String;
    const-string v2, "-Xdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-agentlib:jdwp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 107
    .end local v1    # "argument":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .restart local v1    # "argument":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 110
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "argument":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 77
    iget-boolean v0, p0, Lorg/junit/rules/DisableOnDebug;->debugging:Z

    if-eqz v0, :cond_0

    .line 78
    return-object p1

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/junit/rules/DisableOnDebug;->rule:Lorg/junit/rules/TestRule;

    invoke-interface {v0, p1, p2}, Lorg/junit/rules/TestRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    return-object v0
.end method

.method public isDebugging()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/junit/rules/DisableOnDebug;->debugging:Z

    return v0
.end method
