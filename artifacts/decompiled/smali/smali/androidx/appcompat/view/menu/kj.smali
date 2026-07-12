.class public Landroidx/appcompat/view/menu/kj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/cc;


# static fields
.field public static final a:Landroidx/appcompat/view/menu/kj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/kj;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/kj;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/kj;->a:Landroidx/appcompat/view/menu/kj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Landroidx/appcompat/view/menu/cc;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/kj;->a:Landroidx/appcompat/view/menu/kj;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
