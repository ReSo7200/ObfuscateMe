.class public abstract Lorg/hamcrest/CustomTypeSafeMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "CustomTypeSafeMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final fixedDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .line 28
    .local p0, "this":Lorg/hamcrest/CustomTypeSafeMatcher;, "Lorg/hamcrest/CustomTypeSafeMatcher<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lorg/hamcrest/CustomTypeSafeMatcher;->fixedDescription:Ljava/lang/String;

    .line 33
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Description must be non null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 37
    .local p0, "this":Lorg/hamcrest/CustomTypeSafeMatcher;, "Lorg/hamcrest/CustomTypeSafeMatcher<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/CustomTypeSafeMatcher;->fixedDescription:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 38
    return-void
.end method
