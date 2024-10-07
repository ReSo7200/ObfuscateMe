.class public final synthetic Landroidx/test/platform/io/PlatformTestStorageRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 1

    .line 0
    new-instance v0, Landroidx/test/platform/io/FileTestStorage;

    invoke-direct {v0}, Landroidx/test/platform/io/FileTestStorage;-><init>()V

    check-cast v0, Landroidx/test/platform/io/PlatformTestStorage;

    return-object v0
.end method
