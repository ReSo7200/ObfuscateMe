.class public interface abstract Lorg/hamcrest/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

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


# virtual methods
.method public abstract _dont_implement_Matcher___instead_extend_BaseMatcher_()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V
.end method

.method public abstract matches(Ljava/lang/Object;)Z
.end method
