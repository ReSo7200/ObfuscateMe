.class public Lorg/junit/runners/AllTests;
.super Lorg/junit/internal/runners/SuiteMethod;
.source "AllTests.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/SuiteMethod;-><init>(Ljava/lang/Class;)V

    .line 26
    return-void
.end method
