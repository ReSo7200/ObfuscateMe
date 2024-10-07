.class public interface abstract Lorg/hamcrest/Condition$Step;
.super Ljava/lang/Object;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hamcrest/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/hamcrest/Description;",
            ")",
            "Lorg/hamcrest/Condition<",
            "TO;>;"
        }
    .end annotation
.end method
