.class public abstract Landroidx/appcompat/view/menu/tw0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JJJ)Landroidx/appcompat/view/menu/tw0;
    .locals 8

    new-instance v7, Landroidx/appcompat/view/menu/j6;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/j6;-><init>(JJJ)V

    return-object v7
.end method

.method public static e()Landroidx/appcompat/view/menu/tw0;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroidx/appcompat/view/menu/tw0;->a(JJJ)Landroidx/appcompat/view/menu/tw0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()J
.end method

.method public abstract d()J
.end method
