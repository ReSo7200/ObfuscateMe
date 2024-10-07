.class public Lorg/junit/rules/RunRules;
.super Lorg/junit/runners/model/Statement;
.source "RunRules.java"


# instance fields
.field private final statement:Lorg/junit/runners/model/Statement;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p3, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/lang/Iterable<",
            "Lorg/junit/rules/TestRule;",
            ">;",
            "Lorg/junit/runner/Description;",
            ")V"
        }
    .end annotation

    .line 14
    .local p2, "rules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/junit/rules/TestRule;>;"
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 15
    invoke-static {p1, p2, p3}, Lorg/junit/rules/RunRules;->applyAll(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/rules/RunRules;->statement:Lorg/junit/runners/model/Statement;

    .line 16
    return-void
.end method

.method private static applyAll(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 2
    .param p0, "result"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/lang/Iterable<",
            "Lorg/junit/rules/TestRule;",
            ">;",
            "Lorg/junit/runner/Description;",
            ")",
            "Lorg/junit/runners/model/Statement;"
        }
    .end annotation

    .line 25
    .local p1, "rules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/junit/rules/TestRule;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/rules/TestRule;

    .line 26
    .local v1, "each":Lorg/junit/rules/TestRule;
    invoke-interface {v1, p0, p2}, Lorg/junit/rules/TestRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;

    move-result-object p0

    .end local v1    # "each":Lorg/junit/rules/TestRule;
    goto :goto_0

    .line 28
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public evaluate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/junit/rules/RunRules;->statement:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 21
    return-void
.end method
