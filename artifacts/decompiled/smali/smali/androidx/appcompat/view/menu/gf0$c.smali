.class public Landroidx/appcompat/view/menu/gf0$c;
.super Landroidx/appcompat/view/menu/gf0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gf0$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/gf0$f;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/df0;)V
    .locals 1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/df0;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/gf0$f;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$c;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gf0$f;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$f;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$BigTextStyle"

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/gf0$c;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/gf0$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$c;->e:Ljava/lang/CharSequence;

    return-object p0
.end method
