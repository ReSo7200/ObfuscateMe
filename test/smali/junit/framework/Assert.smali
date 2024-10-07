.class public Ljunit/framework/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static assertEquals(BB)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B

    .line 196
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;BB)V

    .line 197
    return-void
.end method

.method public static assertEquals(CC)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C

    .line 211
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;CC)V

    .line 212
    return-void
.end method

.method public static assertEquals(DDD)V
    .locals 7
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .line 129
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;DDD)V

    .line 130
    return-void
.end method

.method public static assertEquals(FFF)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .line 151
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;FFF)V

    .line 152
    return-void
.end method

.method public static assertEquals(II)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .line 241
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 242
    return-void
.end method

.method public static assertEquals(JJ)V
    .locals 1
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .line 166
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 167
    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;BB)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # B
    .param p2, "actual"    # B

    .line 189
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;CC)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # C
    .param p2, "actual"    # C

    .line 204
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DDD)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .line 116
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p5

    if-lez v0, :cond_1

    .line 120
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :cond_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;FFF)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .line 138
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-lez v0, :cond_1

    .line 142
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :cond_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;II)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 159
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 72
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    return-void

    .line 78
    :cond_1
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 93
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    return-void

    .line 99
    :cond_1
    if-nez p0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 100
    .local v0, "cleanMessage":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljunit/framework/ComparisonFailure;

    invoke-direct {v1, v0, p1, p2}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static assertEquals(Ljava/lang/String;SS)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # S
    .param p2, "actual"    # S

    .line 219
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Z
    .param p2, "actual"    # Z

    .line 174
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public static assertEquals(SS)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S

    .line 226
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;SS)V

    .line 227
    return-void
.end method

.method public static assertEquals(ZZ)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z

    .line 181
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    .line 182
    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 39
    xor-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public static assertFalse(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 47
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 256
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 315
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 305
    if-ne p1, p2, :cond_0

    .line 306
    invoke-static {p0}, Ljunit/framework/Assert;->failSame(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 267
    if-eqz p0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected: <null> but was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 277
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 278
    return-void
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 296
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 285
    if-ne p1, p2, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 21
    if-nez p1, :cond_0

    .line 22
    invoke-static {p0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 31
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public static fail()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 54
    if-nez p0, :cond_0

    .line 55
    new-instance v0, Ljunit/framework/AssertionFailedError;

    invoke-direct {v0}, Ljunit/framework/AssertionFailedError;-><init>()V

    throw v0

    .line 57
    :cond_0
    new-instance v0, Ljunit/framework/AssertionFailedError;

    invoke-direct {v0, p0}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 329
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 324
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 325
    .local v0, "formatted":Ljava/lang/String;
    :goto_0
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

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static failSame(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 319
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 320
    .local v0, "formatted":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected not same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 333
    const-string v0, ""

    .line 334
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> but was:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
