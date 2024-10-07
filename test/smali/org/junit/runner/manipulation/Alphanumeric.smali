.class public final Lorg/junit/runner/manipulation/Alphanumeric;
.super Lorg/junit/runner/manipulation/Sorter;
.source "Alphanumeric.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Ordering$Factory;


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lorg/junit/runner/manipulation/Alphanumeric$1;

    invoke-direct {v0}, Lorg/junit/runner/manipulation/Alphanumeric$1;-><init>()V

    sput-object v0, Lorg/junit/runner/manipulation/Alphanumeric;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    sget-object v0, Lorg/junit/runner/manipulation/Alphanumeric;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lorg/junit/runner/manipulation/Sorter;-><init>(Ljava/util/Comparator;)V

    .line 16
    return-void
.end method


# virtual methods
.method public create(Lorg/junit/runner/manipulation/Ordering$Context;)Lorg/junit/runner/manipulation/Ordering;
    .locals 0
    .param p1, "context"    # Lorg/junit/runner/manipulation/Ordering$Context;

    .line 19
    return-object p0
.end method
