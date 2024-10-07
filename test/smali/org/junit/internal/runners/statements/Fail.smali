.class public Lorg/junit/internal/runners/statements/Fail;
.super Lorg/junit/runners/model/Statement;
.source "Fail.java"


# instance fields
.field private final error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 8
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/junit/internal/runners/statements/Fail;->error:Ljava/lang/Throwable;

    .line 10
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/junit/internal/runners/statements/Fail;->error:Ljava/lang/Throwable;

    throw v0
.end method
