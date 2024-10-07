.class public Lorg/hamcrest/internal/SelfDescribingValue;
.super Ljava/lang/Object;
.source "SelfDescribingValue.java"

# interfaces
.implements Lorg/hamcrest/SelfDescribing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/hamcrest/SelfDescribing;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 9
    .local p0, "this":Lorg/hamcrest/internal/SelfDescribingValue;, "Lorg/hamcrest/internal/SelfDescribingValue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/hamcrest/internal/SelfDescribingValue;->value:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 15
    .local p0, "this":Lorg/hamcrest/internal/SelfDescribingValue;, "Lorg/hamcrest/internal/SelfDescribingValue<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/internal/SelfDescribingValue;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 16
    return-void
.end method
