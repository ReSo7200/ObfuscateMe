.class public abstract Lorg/junit/rules/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 32
    new-instance v0, Lorg/junit/rules/Verifier$1;

    invoke-direct {v0, p0, p1}, Lorg/junit/rules/Verifier$1;-><init>(Lorg/junit/rules/Verifier;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method

.method protected verify()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    return-void
.end method
