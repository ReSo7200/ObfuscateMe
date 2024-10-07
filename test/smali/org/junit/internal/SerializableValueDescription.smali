.class Lorg/junit/internal/SerializableValueDescription;
.super Ljava/lang/Object;
.source "SerializableValueDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/SerializableValueDescription;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static asSerializableValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 27
    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lorg/junit/internal/SerializableValueDescription;

    invoke-direct {v0, p0}, Lorg/junit/internal/SerializableValueDescription;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 28
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/junit/internal/SerializableValueDescription;->value:Ljava/lang/String;

    return-object v0
.end method
