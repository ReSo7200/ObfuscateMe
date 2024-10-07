.class public Lorg/junit/internal/runners/model/MultipleFailureException;
.super Lorg/junit/runners/model/MultipleFailureException;
.source "MultipleFailureException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 10
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1}, Lorg/junit/runners/model/MultipleFailureException;-><init>(Ljava/util/List;)V

    .line 11
    return-void
.end method
