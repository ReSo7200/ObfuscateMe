.class public Lorg/junit/runner/manipulation/Ordering$Context;
.super Ljava/lang/Object;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runner/manipulation/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final description:Lorg/junit/runner/Description;


# direct methods
.method private constructor <init>(Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/junit/runner/manipulation/Ordering$Context;->description:Lorg/junit/runner/Description;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/runner/Description;Lorg/junit/runner/manipulation/Ordering$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/runner/Description;
    .param p2, "x1"    # Lorg/junit/runner/manipulation/Ordering$1;

    .line 143
    invoke-direct {p0, p1}, Lorg/junit/runner/manipulation/Ordering$Context;-><init>(Lorg/junit/runner/Description;)V

    return-void
.end method


# virtual methods
.method public getTarget()Lorg/junit/runner/Description;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/junit/runner/manipulation/Ordering$Context;->description:Lorg/junit/runner/Description;

    return-object v0
.end method
