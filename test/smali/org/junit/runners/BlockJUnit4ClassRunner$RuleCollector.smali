.class Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;
.super Ljava/lang/Object;
.source "BlockJUnit4ClassRunner.java"

# interfaces
.implements Lorg/junit/runners/model/MemberValueConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/BlockJUnit4ClassRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/junit/runners/model/MemberValueConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 459
    .local p0, "this":Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;, "Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;->result:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/runners/BlockJUnit4ClassRunner$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/runners/BlockJUnit4ClassRunner$1;

    .line 459
    .local p0, "this":Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;, "Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector<TT;>;"
    invoke-direct {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;TT;)V"
        }
    .end annotation

    .line 463
    .local p0, "this":Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;, "Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector<TT;>;"
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-class v0, Lorg/junit/Rule;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/FrameworkMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/Rule;

    .line 464
    .local v0, "rule":Lorg/junit/Rule;
    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, Lorg/junit/runners/BlockJUnit4ClassRunner;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/RuleContainer;

    .line 466
    .local v1, "container":Lorg/junit/runners/RuleContainer;
    if-eqz v1, :cond_0

    .line 467
    invoke-interface {v0}, Lorg/junit/Rule;->order()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lorg/junit/runners/RuleContainer;->setOrder(Ljava/lang/Object;I)V

    .line 470
    .end local v1    # "container":Lorg/junit/runners/RuleContainer;
    :cond_0
    iget-object v1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;->result:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method
