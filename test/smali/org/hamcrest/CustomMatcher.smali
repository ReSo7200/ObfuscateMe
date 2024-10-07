.class public abstract Lorg/hamcrest/CustomMatcher;
.super Lorg/hamcrest/BaseMatcher;
.source "CustomMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/BaseMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final fixedDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .line 26
    .local p0, "this":Lorg/hamcrest/CustomMatcher;, "Lorg/hamcrest/CustomMatcher<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lorg/hamcrest/CustomMatcher;->fixedDescription:Ljava/lang/String;

    .line 31
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Description should be non null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 35
    .local p0, "this":Lorg/hamcrest/CustomMatcher;, "Lorg/hamcrest/CustomMatcher<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/CustomMatcher;->fixedDescription:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 36
    return-void
.end method
