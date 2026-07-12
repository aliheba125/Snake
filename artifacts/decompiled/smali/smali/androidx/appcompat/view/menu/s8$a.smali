.class public Landroidx/appcompat/view/menu/s8$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/s8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/s8;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/s8;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/s8$a;->a:Landroidx/appcompat/view/menu/s8;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/wh0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/wh0;->a()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
