.class Lorg/junit/runners/RuleContainer;
.super Ljava/lang/Object;
.source "RuleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/RuleContainer$RuleEntry;
    }
.end annotation


# static fields
.field static final ENTRY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/junit/runners/RuleContainer$RuleEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final methodRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/rules/MethodRule;",
            ">;"
        }
    .end annotation
.end field

.field private final orderValues:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final testRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/junit/runners/RuleContainer$1;

    invoke-direct {v0}, Lorg/junit/runners/RuleContainer$1;-><init>()V

    sput-object v0, Lorg/junit/runners/RuleContainer;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/RuleContainer;->orderValues:Ljava/util/IdentityHashMap;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/RuleContainer;->testRules:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/RuleContainer;->methodRules:Ljava/util/List;

    .line 99
    return-void
.end method

.method private getSortedEntries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/RuleContainer$RuleEntry;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/junit/runners/RuleContainer;->methodRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/junit/runners/RuleContainer;->testRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v0, "ruleEntries":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/RuleContainer$RuleEntry;>;"
    iget-object v1, p0, Lorg/junit/runners/RuleContainer;->methodRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/rules/MethodRule;

    .line 59
    .local v2, "rule":Lorg/junit/rules/MethodRule;
    new-instance v3, Lorg/junit/runners/RuleContainer$RuleEntry;

    iget-object v4, p0, Lorg/junit/runners/RuleContainer;->orderValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Lorg/junit/runners/RuleContainer$RuleEntry;-><init>(Ljava/lang/Object;ILjava/lang/Integer;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rule":Lorg/junit/rules/MethodRule;
    :cond_0
    iget-object v1, p0, Lorg/junit/runners/RuleContainer;->testRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/rules/TestRule;

    .line 62
    .local v2, "rule":Lorg/junit/rules/TestRule;
    new-instance v3, Lorg/junit/runners/RuleContainer$RuleEntry;

    iget-object v4, p0, Lorg/junit/runners/RuleContainer;->orderValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5, v4}, Lorg/junit/runners/RuleContainer$RuleEntry;-><init>(Ljava/lang/Object;ILjava/lang/Integer;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rule":Lorg/junit/rules/TestRule;
    :cond_1
    sget-object v1, Lorg/junit/runners/RuleContainer;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public add(Lorg/junit/rules/MethodRule;)V
    .locals 1
    .param p1, "methodRule"    # Lorg/junit/rules/MethodRule;

    .line 34
    iget-object v0, p0, Lorg/junit/runners/RuleContainer;->methodRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public add(Lorg/junit/rules/TestRule;)V
    .locals 1
    .param p1, "testRule"    # Lorg/junit/rules/TestRule;

    .line 38
    iget-object v0, p0, Lorg/junit/runners/RuleContainer;->testRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public apply(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runner/Description;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 5
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .param p3, "target"    # Ljava/lang/Object;
    .param p4, "statement"    # Lorg/junit/runners/model/Statement;

    .line 73
    iget-object v0, p0, Lorg/junit/runners/RuleContainer;->methodRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/junit/runners/RuleContainer;->testRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    return-object p4

    .line 76
    :cond_0
    move-object v0, p4

    .line 77
    .local v0, "result":Lorg/junit/runners/model/Statement;
    invoke-direct {p0}, Lorg/junit/runners/RuleContainer;->getSortedEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/RuleContainer$RuleEntry;

    .line 78
    .local v2, "ruleEntry":Lorg/junit/runners/RuleContainer$RuleEntry;
    iget v3, v2, Lorg/junit/runners/RuleContainer$RuleEntry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 79
    iget-object v3, v2, Lorg/junit/runners/RuleContainer$RuleEntry;->rule:Ljava/lang/Object;

    check-cast v3, Lorg/junit/rules/TestRule;

    invoke-interface {v3, v0, p2}, Lorg/junit/rules/TestRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_1
    iget-object v3, v2, Lorg/junit/runners/RuleContainer$RuleEntry;->rule:Ljava/lang/Object;

    check-cast v3, Lorg/junit/rules/MethodRule;

    invoke-interface {v3, v0, p1, p3}, Lorg/junit/rules/MethodRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .end local v2    # "ruleEntry":Lorg/junit/runners/RuleContainer$RuleEntry;
    :goto_1
    goto :goto_0

    .line 84
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method getSortedRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/junit/runners/RuleContainer;->getSortedEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/RuleContainer$RuleEntry;

    .line 94
    .local v2, "entry":Lorg/junit/runners/RuleContainer$RuleEntry;
    iget-object v3, v2, Lorg/junit/runners/RuleContainer$RuleEntry;->rule:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "entry":Lorg/junit/runners/RuleContainer$RuleEntry;
    :cond_0
    return-object v0
.end method

.method public setOrder(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "rule"    # Ljava/lang/Object;
    .param p2, "order"    # I

    .line 30
    iget-object v0, p0, Lorg/junit/runners/RuleContainer;->orderValues:Ljava/util/IdentityHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
