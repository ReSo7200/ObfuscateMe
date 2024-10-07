.class Lorg/junit/runners/ParentRunner$ClassRuleCollector;
.super Ljava/lang/Object;
.source "ParentRunner.java"

# interfaces
.implements Lorg/junit/runners/model/MemberValueConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/ParentRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassRuleCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/junit/runners/model/MemberValueConsumer<",
        "Lorg/junit/rules/TestRule;",
        ">;"
    }
.end annotation


# instance fields
.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/RuleContainer$RuleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/runners/ParentRunner$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/runners/ParentRunner$1;

    .line 564
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner$ClassRuleCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Lorg/junit/runners/model/FrameworkMember;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 564
    move-object v0, p2

    check-cast v0, Lorg/junit/rules/TestRule;

    invoke-virtual {p0, p1, v0}, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->accept(Lorg/junit/runners/model/FrameworkMember;Lorg/junit/rules/TestRule;)V

    return-void
.end method

.method public accept(Lorg/junit/runners/model/FrameworkMember;Lorg/junit/rules/TestRule;)V
    .locals 5
    .param p2, "value"    # Lorg/junit/rules/TestRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Lorg/junit/rules/TestRule;",
            ")V"
        }
    .end annotation

    .line 568
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    const-class v0, Lorg/junit/ClassRule;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/FrameworkMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/ClassRule;

    .line 569
    .local v0, "rule":Lorg/junit/ClassRule;
    iget-object v1, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    new-instance v2, Lorg/junit/runners/RuleContainer$RuleEntry;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/junit/ClassRule;->order()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v2, p2, v4, v3}, Lorg/junit/runners/RuleContainer$RuleEntry;-><init>(Ljava/lang/Object;ILjava/lang/Integer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method public getOrderedRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    sget-object v1, Lorg/junit/runners/RuleContainer;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 576
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    iget-object v1, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

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

    .line 577
    .local v2, "entry":Lorg/junit/runners/RuleContainer$RuleEntry;
    iget-object v3, v2, Lorg/junit/runners/RuleContainer$RuleEntry;->rule:Ljava/lang/Object;

    check-cast v3, Lorg/junit/rules/TestRule;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "entry":Lorg/junit/runners/RuleContainer$RuleEntry;
    :cond_0
    return-object v0
.end method
