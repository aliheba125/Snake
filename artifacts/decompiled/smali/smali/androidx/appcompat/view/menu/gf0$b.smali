.class public Landroidx/appcompat/view/menu/gf0$b;
.super Landroidx/appcompat/view/menu/gf0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/gf0$b$b;,
        Landroidx/appcompat/view/menu/gf0$b$a;
    }
.end annotation


# instance fields
.field public e:Landroidx/core/graphics/drawable/IconCompat;

.field public f:Landroidx/core/graphics/drawable/IconCompat;

.field public g:Z

.field public h:Ljava/lang/CharSequence;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gf0$f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/df0;)V
    .locals 5

    invoke-interface {p1}, Landroidx/appcompat/view/menu/df0;->a()Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1, v0}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$f;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/gf0$b;->e:Landroidx/core/graphics/drawable/IconCompat;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_1

    instance-of v1, p1, Landroidx/appcompat/view/menu/hf0;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/hf0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hf0;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget-object v4, p0, Landroidx/appcompat/view/menu/gf0$b;->e:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v4, v1}, Landroidx/core/graphics/drawable/IconCompat;->m(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/gf0$b$b;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->g()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/gf0$b;->e:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/gf0$b;->g:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/gf0$b;->f:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_2

    :cond_3
    instance-of v1, p1, Landroidx/appcompat/view/menu/hf0;

    if-eqz v1, :cond_4

    check-cast p1, Landroidx/appcompat/view/menu/hf0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/hf0;->e()Landroid/content/Context;

    move-result-object v3

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/gf0$b;->f:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p1, v3}, Landroidx/core/graphics/drawable/IconCompat;->m(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/gf0$b$a;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    :cond_5
    :goto_2
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/gf0$f;->d:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/appcompat/view/menu/gf0$f;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_7

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/gf0$b;->i:Z

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/gf0$b$b;->c(Landroid/app/Notification$BigPictureStyle;Z)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/gf0$b;->h:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/gf0$b$b;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    return-object v0
.end method

.method public h(Landroid/graphics/Bitmap;)Landroidx/appcompat/view/menu/gf0$b;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$b;->f:Landroidx/core/graphics/drawable/IconCompat;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/gf0$b;->g:Z

    return-object p0
.end method

.method public i(Landroid/graphics/Bitmap;)Landroidx/appcompat/view/menu/gf0$b;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$b;->e:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method
