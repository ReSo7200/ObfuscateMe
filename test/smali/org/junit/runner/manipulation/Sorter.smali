.class public Lorg/junit/runner/manipulation/Sorter;
.super Lorg/junit/runner/manipulation/Ordering;
.source "Sorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/junit/runner/manipulation/Ordering;",
        "Ljava/util/Comparator<",
        "Lorg/junit/runner/Description;",
        ">;"
    }
.end annotation


# static fields
.field public static final NULL:Lorg/junit/runner/manipulation/Sorter;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lorg/junit/runner/manipulation/Sorter;

    new-instance v1, Lorg/junit/runner/manipulation/Sorter$1;

    invoke-direct {v1}, Lorg/junit/runner/manipulation/Sorter$1;-><init>()V

    invoke-direct {v0, v1}, Lorg/junit/runner/manipulation/Sorter;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/junit/runner/manipulation/Sorter;->NULL:Lorg/junit/runner/manipulation/Sorter;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/junit/runner/Description;>;"
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Ordering;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/junit/runner/manipulation/Sorter;->comparator:Ljava/util/Comparator;

    .line 39
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Lorg/junit/runner/manipulation/Sortable;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lorg/junit/runner/manipulation/Sortable;

    .line 55
    .local v0, "sortable":Lorg/junit/runner/manipulation/Sortable;
    invoke-interface {v0, p0}, Lorg/junit/runner/manipulation/Sortable;->sort(Lorg/junit/runner/manipulation/Sorter;)V

    .line 57
    .end local v0    # "sortable":Lorg/junit/runner/manipulation/Sortable;
    :cond_0
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 18
    move-object v0, p1

    check-cast v0, Lorg/junit/runner/Description;

    move-object v1, p2

    check-cast v1, Lorg/junit/runner/Description;

    invoke-virtual {p0, v0, v1}, Lorg/junit/runner/manipulation/Sorter;->compare(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I
    .locals 1
    .param p1, "o1"    # Lorg/junit/runner/Description;
    .param p2, "o2"    # Lorg/junit/runner/Description;

    .line 60
    iget-object v0, p0, Lorg/junit/runner/manipulation/Sorter;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final orderItems(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
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

    .line 76
    .local p1, "descriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/junit/runner/Description;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v0, "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    return-object v0
.end method

.method validateOrderingIsCorrect()Z
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method
