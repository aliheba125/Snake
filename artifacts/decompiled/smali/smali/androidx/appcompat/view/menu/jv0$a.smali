.class public Landroidx/appcompat/view/menu/jv0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/jv0;->P2(Landroidx/appcompat/view/menu/p3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Landroid/os/IBinder;

.field public final synthetic m:Landroidx/appcompat/view/menu/jv0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jv0;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jv0$a;->m:Landroidx/appcompat/view/menu/jv0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/jv0$a;->l:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->w2()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jv0$a;->l:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/jv0$a;->m:Landroidx/appcompat/view/menu/jv0;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/jv0;->v2(Landroidx/appcompat/view/menu/jv0;Landroidx/appcompat/view/menu/p3;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
