.class final enum Lorg/junit/internal/Throwables$State$2;
.super Lorg/junit/internal/Throwables$State;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/Throwables$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/junit/internal/Throwables$State;-><init>(Ljava/lang/String;ILorg/junit/internal/Throwables$1;)V

    return-void
.end method


# virtual methods
.method public processLine(Ljava/lang/String;)Lorg/junit/internal/Throwables$State;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lorg/junit/internal/Throwables;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lorg/junit/internal/Throwables$State$2;->PROCESSING_REFLECTION_CODE:Lorg/junit/internal/Throwables$State;

    return-object v0

    .line 198
    :cond_0
    invoke-static {p1}, Lorg/junit/internal/Throwables;->access$100(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    return-object p0

    .line 201
    :cond_1
    sget-object v0, Lorg/junit/internal/Throwables$State$2;->PROCESSING_OTHER_CODE:Lorg/junit/internal/Throwables$State;

    return-object v0
.end method
