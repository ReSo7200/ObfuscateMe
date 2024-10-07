.class public abstract Lorg/junit/runner/manipulation/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field public static final ALL:Lorg/junit/runner/manipulation/Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/junit/runner/manipulation/Filter$1;

    invoke-direct {v0}, Lorg/junit/runner/manipulation/Filter$1;-><init>()V

    sput-object v0, Lorg/junit/runner/manipulation/Filter;->ALL:Lorg/junit/runner/manipulation/Filter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchMethodDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Filter;
    .locals 1
    .param p0, "desiredDescription"    # Lorg/junit/runner/Description;

    .line 48
    new-instance v0, Lorg/junit/runner/manipulation/Filter$2;

    invoke-direct {v0, p0}, Lorg/junit/runner/manipulation/Filter$2;-><init>(Lorg/junit/runner/Description;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 1
    .param p1, "child"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 93
    instance-of v0, p1, Lorg/junit/runner/manipulation/Filterable;

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/junit/runner/manipulation/Filterable;

    .line 97
    .local v0, "filterable":Lorg/junit/runner/manipulation/Filterable;
    invoke-interface {v0, p0}, Lorg/junit/runner/manipulation/Filterable;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 98
    return-void
.end method

.method public abstract describe()Ljava/lang/String;
.end method

.method public intersect(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/manipulation/Filter;
    .locals 2
    .param p1, "second"    # Lorg/junit/runner/manipulation/Filter;

    .line 105
    if-eq p1, p0, :cond_1

    sget-object v0, Lorg/junit/runner/manipulation/Filter;->ALL:Lorg/junit/runner/manipulation/Filter;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    move-object v0, p0

    .line 109
    .local v0, "first":Lorg/junit/runner/manipulation/Filter;
    new-instance v1, Lorg/junit/runner/manipulation/Filter$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/junit/runner/manipulation/Filter$3;-><init>(Lorg/junit/runner/manipulation/Filter;Lorg/junit/runner/manipulation/Filter;Lorg/junit/runner/manipulation/Filter;)V

    return-object v1

    .line 106
    .end local v0    # "first":Lorg/junit/runner/manipulation/Filter;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public abstract shouldRun(Lorg/junit/runner/Description;)Z
.end method
