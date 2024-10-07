.class public Lorg/junit/internal/runners/InitializationError;
.super Ljava/lang/Exception;
.source "InitializationError.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/InitializationError;-><init>([Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

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

    .line 22
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/junit/internal/runners/InitializationError;->fErrors:Ljava/util/List;

    .line 24
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errors"    # [Ljava/lang/Throwable;

    .line 27
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/InitializationError;-><init>(Ljava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getCauses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/junit/internal/runners/InitializationError;->fErrors:Ljava/util/List;

    return-object v0
.end method
