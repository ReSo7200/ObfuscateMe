.class public Ljunit/framework/AssertionFailedError;
.super Ljava/lang/AssertionError;
.source "AssertionFailedError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 23
    invoke-static {p1}, Ljunit/framework/AssertionFailedError;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method private static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 27
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
