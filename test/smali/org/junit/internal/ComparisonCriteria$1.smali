.class final Lorg/junit/internal/ComparisonCriteria$1;
.super Ljava/lang/Object;
.source "ComparisonCriteria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/internal/ComparisonCriteria;->objectWithToString(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/junit/internal/ComparisonCriteria$1;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/junit/internal/ComparisonCriteria$1;->val$string:Ljava/lang/String;

    return-object v0
.end method
