.class public Landroidx/appcompat/view/menu/vx$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/vx;->f(Landroid/app/Activity;Ljava/lang/String;IJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:[Landroid/content/BroadcastReceiver;

.field public final synthetic c:J

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/content/BroadcastReceiver;JZ)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/vx$a;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/vx$a;->b:[Landroid/content/BroadcastReceiver;

    iput-wide p3, p0, Landroidx/appcompat/view/menu/vx$a;->c:J

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/vx$a;->d:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/vx$a;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/view/menu/vx$a;->b:[Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.snake.INTERNAL_OAUTH_CANCELLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroidx/appcompat/view/menu/vx$a;->c:J

    const/4 v2, 0x2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/vx$a;->d:Z

    invoke-static/range {v0 .. v6}, Landroidx/appcompat/view/menu/vx;->c(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p1, "url"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Landroidx/appcompat/view/menu/vx$a;->c:J

    iget-boolean p2, p0, Landroidx/appcompat/view/menu/vx$a;->d:Z

    invoke-static {p1, v0, v1, p2}, Landroidx/appcompat/view/menu/vx;->a(Ljava/lang/String;JZ)V

    return-void
.end method
