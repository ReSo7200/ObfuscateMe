.class public final Lorg/junit/runner/manipulation/Orderer;
.super Ljava/lang/Object;
.source "Orderer.java"


# instance fields
.field private final ordering:Lorg/junit/runner/manipulation/Ordering;


# direct methods
.method constructor <init>(Lorg/junit/runner/manipulation/Ordering;)V
    .locals 0
    .param p1, "delegate"    # Lorg/junit/runner/manipulation/Ordering;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/junit/runner/manipulation/Orderer;->ordering:Lorg/junit/runner/manipulation/Ordering;

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 57
    instance-of v0, p1, Lorg/junit/runner/manipulation/Orderable;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/junit/runner/manipulation/Orderable;

    .line 59
    .local v0, "orderable":Lorg/junit/runner/manipulation/Orderable;
    invoke-interface {v0, p0}, Lorg/junit/runner/manipulation/Orderable;->order(Lorg/junit/runner/manipulation/Orderer;)V

    .line 61
    .end local v0    # "orderable":Lorg/junit/runner/manipulation/Orderable;
    :cond_0
    return-void
.end method

.method public order(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/junit/runner/Description;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 30
    .local p1, "descriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/junit/runner/Description;>;"
    iget-object v0, p0, Lorg/junit/runner/manipulation/Orderer;->ordering:Lorg/junit/runner/manipulation/Ordering;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/junit/runner/manipulation/Ordering;->orderItems(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "inOrder":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    iget-object v1, p0, Lorg/junit/runner/manipulation/Orderer;->ordering:Lorg/junit/runner/manipulation/Ordering;

    invoke-virtual {v1}, Lorg/junit/runner/manipulation/Ordering;->validateOrderingIsCorrect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    return-object v0

    .line 36
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 37
    .local v1, "uniqueDescriptions":Ljava/util/Set;, "Ljava/util/Set<Lorg/junit/runner/Description;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    .local v2, "resultAsSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/junit/runner/Description;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 43
    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    return-object v0

    .line 44
    :cond_1
    new-instance v3, Lorg/junit/runner/manipulation/InvalidOrderingException;

    const-string v4, "Ordering removed items"

    invoke-direct {v3, v4}, Lorg/junit/runner/manipulation/InvalidOrderingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    :cond_2
    new-instance v3, Lorg/junit/runner/manipulation/InvalidOrderingException;

    const-string v4, "Ordering duplicated items"

    invoke-direct {v3, v4}, Lorg/junit/runner/manipulation/InvalidOrderingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    .end local v2    # "resultAsSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/junit/runner/Description;>;"
    :cond_3
    new-instance v2, Lorg/junit/runner/manipulation/InvalidOrderingException;

    const-string v3, "Ordering added items"

    invoke-direct {v2, v3}, Lorg/junit/runner/manipulation/InvalidOrderingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
