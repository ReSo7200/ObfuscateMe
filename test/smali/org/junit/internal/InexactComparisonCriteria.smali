.class public Lorg/junit/internal/InexactComparisonCriteria;
.super Lorg/junit/internal/ComparisonCriteria;
.source "InexactComparisonCriteria.java"


# instance fields
.field public fDelta:Ljava/lang/Object;


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "delta"    # D

    .line 8
    invoke-direct {p0}, Lorg/junit/internal/ComparisonCriteria;-><init>()V

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/InexactComparisonCriteria;->fDelta:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "delta"    # F

    .line 12
    invoke-direct {p0}, Lorg/junit/internal/ComparisonCriteria;-><init>()V

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/InexactComparisonCriteria;->fDelta:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method protected assertElementsEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 18
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 19
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Lorg/junit/internal/InexactComparisonCriteria;->fDelta:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lorg/junit/Assert;->assertEquals(DDD)V

    goto :goto_0

    .line 21
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lorg/junit/internal/InexactComparisonCriteria;->fDelta:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/junit/Assert;->assertEquals(FFF)V

    .line 23
    :goto_0
    return-void
.end method
