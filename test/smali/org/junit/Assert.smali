.class public Lorg/junit/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[B[B)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [B
    .param p2, "actuals"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 343
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[C[C)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [C
    .param p2, "actuals"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 368
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[D[DD)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [D
    .param p2, "actuals"    # [D
    .param p3, "delta"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 471
    new-instance v0, Lorg/junit/internal/InexactComparisonCriteria;

    invoke-direct {v0, p3, p4}, Lorg/junit/internal/InexactComparisonCriteria;-><init>(D)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/junit/internal/InexactComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[F[FF)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [F
    .param p2, "actuals"    # [F
    .param p3, "delta"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 502
    new-instance v0, Lorg/junit/internal/InexactComparisonCriteria;

    invoke-direct {v0, p3}, Lorg/junit/internal/InexactComparisonCriteria;-><init>(F)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/junit/internal/InexactComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 503
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[I[I)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [I
    .param p2, "actuals"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 418
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[J[J)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [J
    .param p2, "actuals"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 443
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [Ljava/lang/Object;
    .param p2, "actuals"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 285
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[S[S)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [S
    .param p2, "actuals"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 393
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;[Z[Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [Z
    .param p2, "actuals"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 316
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public static assertArrayEquals([B[B)V
    .locals 1
    .param p0, "expecteds"    # [B
    .param p1, "actuals"    # [B

    .line 354
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[B[B)V

    .line 355
    return-void
.end method

.method public static assertArrayEquals([C[C)V
    .locals 1
    .param p0, "expecteds"    # [C
    .param p1, "actuals"    # [C

    .line 379
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[C[C)V

    .line 380
    return-void
.end method

.method public static assertArrayEquals([D[DD)V
    .locals 1
    .param p0, "expecteds"    # [D
    .param p1, "actuals"    # [D
    .param p2, "delta"    # D

    .line 485
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[D[DD)V

    .line 486
    return-void
.end method

.method public static assertArrayEquals([F[FF)V
    .locals 1
    .param p0, "expecteds"    # [F
    .param p1, "actuals"    # [F
    .param p2, "delta"    # F

    .line 516
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[F[FF)V

    .line 517
    return-void
.end method

.method public static assertArrayEquals([I[I)V
    .locals 1
    .param p0, "expecteds"    # [I
    .param p1, "actuals"    # [I

    .line 429
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[I[I)V

    .line 430
    return-void
.end method

.method public static assertArrayEquals([J[J)V
    .locals 1
    .param p0, "expecteds"    # [J
    .param p1, "actuals"    # [J

    .line 454
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[J[J)V

    .line 455
    return-void
.end method

.method public static assertArrayEquals([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expecteds"    # [Ljava/lang/Object;
    .param p1, "actuals"    # [Ljava/lang/Object;

    .line 300
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public static assertArrayEquals([S[S)V
    .locals 1
    .param p0, "expecteds"    # [S
    .param p1, "actuals"    # [S

    .line 404
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[S[S)V

    .line 405
    return-void
.end method

.method public static assertArrayEquals([Z[Z)V
    .locals 1
    .param p0, "expecteds"    # [Z
    .param p1, "actuals"    # [Z

    .line 329
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[Z[Z)V

    .line 330
    return-void
.end method

.method public static assertEquals(DD)V
    .locals 1
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 658
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DD)V

    .line 659
    return-void
.end method

.method public static assertEquals(DDD)V
    .locals 7
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .line 685
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DDD)V

    .line 686
    return-void
.end method

.method public static assertEquals(FFF)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .line 701
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;FFF)V

    .line 702
    return-void
.end method

.method public static assertEquals(JJ)V
    .locals 1
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .line 633
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 634
    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DD)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    const-string v0, "Use assertEquals(expected, actual, delta) to compare floating-point numbers"

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DDD)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .line 554
    invoke-static/range {p1 .. p6}, Lorg/junit/Assert;->doubleIsDifferent(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/junit/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;FFF)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .line 576
    invoke-static {p1, p2, p3}, Lorg/junit/Assert;->floatIsDifferent(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/junit/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 579
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 646
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 647
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/junit/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 112
    invoke-static {p1, p2}, Lorg/junit/Assert;->equalsRegardingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 116
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 117
    .local v0, "cleanMessage":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/junit/ComparisonFailure;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lorg/junit/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 120
    .end local v0    # "cleanMessage":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # [Ljava/lang/Object;
    .param p2, "actuals"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->assertArrayEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 883
    return-void
.end method

.method public static assertEquals([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "expecteds"    # [Ljava/lang/Object;
    .param p1, "actuals"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 899
    invoke-static {p0, p1}, Lorg/junit/Assert;->assertArrayEquals([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 900
    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 65
    xor-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method public static assertFalse(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 75
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/junit/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static assertNotEquals(DDD)V
    .locals 7
    .param p0, "unexpected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .line 251
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/junit/Assert;->assertNotEquals(Ljava/lang/String;DDD)V

    .line 252
    return-void
.end method

.method public static assertNotEquals(FFF)V
    .locals 1
    .param p0, "unexpected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .line 267
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/junit/Assert;->assertNotEquals(Ljava/lang/String;FFF)V

    .line 268
    return-void
.end method

.method public static assertNotEquals(JJ)V
    .locals 1
    .param p0, "unexpected"    # J
    .param p2, "actual"    # J

    .line 213
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/junit/Assert;->assertNotEquals(Ljava/lang/String;JJ)V

    .line 214
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "unexpected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;DDD)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .line 233
    invoke-static/range {p1 .. p6}, Lorg/junit/Assert;->doubleIsDifferent(DDD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/junit/Assert;->failEquals(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    :cond_0
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;FFF)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .line 598
    invoke-static {p1, p2, p3}, Lorg/junit/Assert;->floatIsDifferent(FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/junit/Assert;->failEquals(Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    :cond_0
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;JJ)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # J
    .param p3, "actual"    # J

    .line 200
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 201
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/junit/Assert;->failEquals(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    :cond_0
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 162
    invoke-static {p1, p2}, Lorg/junit/Assert;->equalsRegardingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p0, p2}, Lorg/junit/Assert;->failEquals(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 723
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/junit/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 724
    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 713
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 714
    return-void
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "unexpected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 812
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 813
    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 798
    if-ne p1, p2, :cond_0

    .line 799
    invoke-static {p0}, Lorg/junit/Assert;->failSame(Ljava/lang/String;)V

    .line 801
    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 748
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/junit/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 735
    if-nez p1, :cond_0

    .line 736
    return-void

    .line 738
    :cond_0
    invoke-static {p0, p1}, Lorg/junit/Assert;->failNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    return-void
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 783
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 769
    if-ne p1, p2, :cond_0

    .line 770
    return-void

    .line 772
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 773
    return-void
.end method

.method public static assertThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 930
    .local p0, "actual":Ljava/lang/Object;, "TT;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    const-string v0, ""

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 931
    return-void
.end method

.method public static assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 0
    .param p0, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 964
    .local p1, "actual":Ljava/lang/Object;, "TT;"
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1, p2}, Lorg/hamcrest/MatcherAssert;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 965
    return-void
.end method

.method public static assertThrows(Ljava/lang/Class;Lorg/junit/function/ThrowingRunnable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "runnable"    # Lorg/junit/function/ThrowingRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/junit/function/ThrowingRunnable;",
            ")TT;"
        }
    .end annotation

    .line 981
    .local p0, "expectedThrowable":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/junit/Assert;->assertThrows(Ljava/lang/String;Ljava/lang/Class;Lorg/junit/function/ThrowingRunnable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static assertThrows(Ljava/lang/String;Ljava/lang/Class;Lorg/junit/function/ThrowingRunnable;)Ljava/lang/Throwable;
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "runnable"    # Lorg/junit/function/ThrowingRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/junit/function/ThrowingRunnable;",
            ")TT;"
        }
    .end annotation

    .line 1001
    .local p1, "expectedThrowable":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-interface {p2}, Lorg/junit/function/ThrowingRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    nop

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/junit/Assert;->buildPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/junit/Assert;->formatClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "expected %s to be thrown, but nothing was thrown"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "notThrownMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1002
    .end local v0    # "notThrownMessage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1003
    .local v0, "actualThrown":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    move-object v1, v0

    .line 1005
    .local v1, "retVal":Ljava/lang/Throwable;, "TT;"
    return-object v1

    .line 1007
    .end local v1    # "retVal":Ljava/lang/Throwable;, "TT;"
    :cond_0
    invoke-static {p1}, Lorg/junit/Assert;->formatClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, "expected":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1009
    .local v2, "actualThrowable":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-static {v2}, Lorg/junit/Assert;->formatClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "actual":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1013
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1016
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/junit/Assert;->buildPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "unexpected exception type thrown;"

    invoke-static {v5, v1, v3}, Lorg/junit/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1020
    .local v4, "mismatchMessage":Ljava/lang/String;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 1021
    .local v5, "assertionError":Ljava/lang/AssertionError;
    invoke-virtual {v5, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1022
    throw v5
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-static {p0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 53
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method private static buildPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 1032
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private static doubleIsDifferent(DDD)Z
    .locals 4
    .param p0, "d1"    # D
    .param p2, "d2"    # D
    .param p4, "delta"    # D

    .line 604
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 605
    return v1

    .line 607
    :cond_0
    sub-double v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v2, p4

    if-gtz v0, :cond_1

    .line 608
    return v1

    .line 611
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static equalsRegardingNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 125
    if-nez p0, :cond_1

    .line 126
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-static {p0, p1}, Lorg/junit/Assert;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static fail()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static failEquals(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 181
    const-string v0, "Values should be different. "

    .line 182
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 835
    invoke-static {p0, p1, p2}, Lorg/junit/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method private static failNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 752
    const-string v0, ""

    .line 753
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected null, but was:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method private static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 825
    const-string v0, ""

    .line 826
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected same:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> was not:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method private static failSame(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 816
    const-string v0, ""

    .line 817
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected not same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method private static floatIsDifferent(FFF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F
    .param p2, "delta"    # F

    .line 615
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 616
    return v1

    .line 618
    :cond_0
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_1

    .line 619
    return v1

    .line 622
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 839
    const-string v0, ""

    .line 840
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "expectedString":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "actualString":Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/junit/Assert;->equalsRegardingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, v1}, Lorg/junit/Assert;->formatClassAndValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, v2}, Lorg/junit/Assert;->formatClassAndValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 850
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expected:<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> but was:<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 856
    .local p0, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static formatClassAndValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "valueString"    # Ljava/lang/String;

    .line 861
    if-nez p0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static internalArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expecteds"    # Ljava/lang/Object;
    .param p2, "actuals"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 534
    new-instance v0, Lorg/junit/internal/ExactComparisonCriteria;

    invoke-direct {v0}, Lorg/junit/internal/ExactComparisonCriteria;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lorg/junit/internal/ExactComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method private static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
