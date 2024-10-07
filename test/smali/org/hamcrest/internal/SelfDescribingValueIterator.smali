.class public Lorg/hamcrest/internal/SelfDescribingValueIterator;
.super Ljava/lang/Object;
.source "SelfDescribingValueIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/hamcrest/SelfDescribing;",
        ">;"
    }
.end annotation


# instance fields
.field private values:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    .local p0, "this":Lorg/hamcrest/internal/SelfDescribingValueIterator;, "Lorg/hamcrest/internal/SelfDescribingValueIterator<TT;>;"
    .local p1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/hamcrest/internal/SelfDescribingValueIterator;->values:Ljava/util/Iterator;

    .line 12
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 16
    .local p0, "this":Lorg/hamcrest/internal/SelfDescribingValueIterator;, "Lorg/hamcrest/internal/SelfDescribingValueIterator<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/internal/SelfDescribingValueIterator;->values:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 7
    .local p0, "this":Lorg/hamcrest/internal/SelfDescribingValueIterator;, "Lorg/hamcrest/internal/SelfDescribingValueIterator<TT;>;"
    invoke-virtual {p0}, Lorg/hamcrest/internal/SelfDescribingValueIterator;->next()Lorg/hamcrest/SelfDescribing;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/hamcrest/SelfDescribing;
    .locals 2

    .line 21
    .local p0, "this":Lorg/hamcrest/internal/SelfDescribingValueIterator;, "Lorg/hamcrest/internal/SelfDescribingValueIterator<TT;>;"
    new-instance v0, Lorg/hamcrest/internal/SelfDescribingValue;

    iget-object v1, p0, Lorg/hamcrest/internal/SelfDescribingValueIterator;->values:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/hamcrest/internal/SelfDescribingValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 26
    .local p0, "this":Lorg/hamcrest/internal/SelfDescribingValueIterator;, "Lorg/hamcrest/internal/SelfDescribingValueIterator<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/internal/SelfDescribingValueIterator;->values:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 27
    return-void
.end method
