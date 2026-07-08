.class public final Landroidx/appcompat/view/menu/tj;
.super Landroidx/appcompat/view/menu/up;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final p:Landroidx/appcompat/view/menu/tj;

.field public static final q:Landroidx/appcompat/view/menu/nh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/appcompat/view/menu/tj;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/tj;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/tj;->p:Landroidx/appcompat/view/menu/tj;

    sget-object v0, Landroidx/appcompat/view/menu/s31;->o:Landroidx/appcompat/view/menu/s31;

    const-string v1, "kotlinx.coroutines.io.parallelism"

    const/16 v2, 0x40

    invoke-static {}, Landroidx/appcompat/view/menu/ty0;->a()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/sn0;->a(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/ty0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/s31;->E(I)Landroidx/appcompat/view/menu/nh;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/tj;->q:Landroidx/appcompat/view/menu/nh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/up;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/tj;->q:Landroidx/appcompat/view/menu/nh;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/nh;->A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/tj;->A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
