.class public Lorg/junit/runner/notification/Failure;
.super Ljava/lang/Object;
.source "Failure.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fDescription:Lorg/junit/runner/Description;

.field private final fThrownException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;
    .param p2, "thrownException"    # Ljava/lang/Throwable;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lorg/junit/runner/notification/Failure;->fThrownException:Ljava/lang/Throwable;

    .line 36
    iput-object p1, p0, Lorg/junit/runner/notification/Failure;->fDescription:Lorg/junit/runner/Description;

    .line 37
    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/junit/runner/notification/Failure;->fDescription:Lorg/junit/runner/Description;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/junit/runner/notification/Failure;->fThrownException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/junit/runner/notification/Failure;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestHeader()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/junit/runner/notification/Failure;->fDescription:Lorg/junit/runner/Description;

    invoke-virtual {v0}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrace()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/junit/runner/notification/Failure;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/Throwables;->getStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrimmedTrace()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/junit/runner/notification/Failure;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/Throwables;->getTrimmedStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/junit/runner/notification/Failure;->getTestHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/runner/notification/Failure;->fThrownException:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
