.class public Landroidx/appcompat/view/menu/hf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/df0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/hf0$e;,
        Landroidx/appcompat/view/menu/hf0$c;,
        Landroidx/appcompat/view/menu/hf0$a;,
        Landroidx/appcompat/view/menu/hf0$b;,
        Landroidx/appcompat/view/menu/hf0$d;,
        Landroidx/appcompat/view/menu/hf0$f;,
        Landroidx/appcompat/view/menu/hf0$g;,
        Landroidx/appcompat/view/menu/hf0$h;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Landroidx/appcompat/view/menu/gf0$e;

.field public d:Landroid/widget/RemoteViews;

.field public e:Landroid/widget/RemoteViews;

.field public final f:Ljava/util/List;

.field public final g:Landroid/os/Bundle;

.field public h:I

.field public i:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gf0$e;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/hf0;->f:Ljava/util/List;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/hf0;->g:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/appcompat/view/menu/hf0;->c:Landroidx/appcompat/view/menu/gf0$e;

    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/view/menu/hf0;->a:Landroid/content/Context;

    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->K:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iget-wide v3, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->icon:I

    iget v5, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroidx/appcompat/view/menu/gf0$e;->i:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->ledARGB:I

    iget v5, v2, Landroid/app/Notification;->ledOnMS:I

    iget v6, v2, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/appcompat/view/menu/gf0$e;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/appcompat/view/menu/gf0$e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/appcompat/view/menu/gf0$e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/appcompat/view/menu/gf0$e;->g:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/appcompat/view/menu/gf0$e;->h:Landroid/app/PendingIntent;

    iget v8, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    invoke-virtual {v3, v4, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Landroidx/appcompat/view/menu/gf0$e;->l:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Landroidx/appcompat/view/menu/gf0$e;->t:I

    iget v8, p1, Landroidx/appcompat/view/menu/gf0$e;->u:I

    iget-boolean v9, p1, Landroidx/appcompat/view/menu/gf0$e;->v:Z

    invoke-virtual {v3, v4, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/appcompat/view/menu/gf0$e;->j:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move-object v0, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v3, v0}, Landroidx/core/graphics/drawable/IconCompat;->m(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/hf0$c;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/gf0$e;->o:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/appcompat/view/menu/gf0$e;->m:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gf0$a;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/hf0;->b(Landroidx/appcompat/view/menu/gf0$a;)V

    goto :goto_5

    :cond_5
    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->D:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->g:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_6
    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->H:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/appcompat/view/menu/hf0;->d:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->I:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/appcompat/view/menu/hf0;->e:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/gf0$e;->n:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/gf0$e;->z:Z

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$a;->i(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$a;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$a;->j(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/gf0$e;->x:Z

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$a;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget v0, p1, Landroidx/appcompat/view/menu/gf0$e;->O:I

    iput v0, p0, Landroidx/appcompat/view/menu/hf0;->h:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->C:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$b;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/appcompat/view/menu/gf0$e;->E:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$b;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/appcompat/view/menu/gf0$e;->F:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$b;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->G:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$b;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1, v3}, Landroidx/appcompat/view/menu/hf0$b;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->U:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-static {v3, v1}, Landroidx/appcompat/view/menu/hf0$b;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_7
    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->J:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/appcompat/view/menu/hf0;->i:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroidx/appcompat/view/menu/gf0$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$e;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move v9, v7

    :goto_7
    iget-object v10, p1, Landroidx/appcompat/view/menu/gf0$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroidx/appcompat/view/menu/gf0$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/gf0$a;

    invoke-static {v11}, Landroidx/appcompat/view/menu/if0;->a(Landroidx/appcompat/view/menu/gf0$a;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    const-string v9, "invisible_actions"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$e;->c()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->T:Ljava/lang/Object;

    if-eqz v1, :cond_b

    iget-object v3, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-static {v3, v1}, Landroidx/appcompat/view/menu/hf0$c;->c(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    :cond_b
    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/appcompat/view/menu/gf0$e;->D:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/appcompat/view/menu/gf0$e;->s:[Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/hf0$d;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->H:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_c

    iget-object v3, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-static {v3, v1}, Landroidx/appcompat/view/menu/hf0$d;->c(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_c
    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->I:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_d

    iget-object v3, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-static {v3, v1}, Landroidx/appcompat/view/menu/hf0$d;->b(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_d
    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->J:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_e

    iget-object v3, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-static {v3, v1}, Landroidx/appcompat/view/menu/hf0$d;->d(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_e
    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget v3, p1, Landroidx/appcompat/view/menu/gf0$e;->L:I

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/hf0$e;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/appcompat/view/menu/gf0$e;->r:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/hf0$e;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/appcompat/view/menu/gf0$e;->M:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/hf0$e;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-wide v8, p1, Landroidx/appcompat/view/menu/gf0$e;->N:J

    invoke-static {v1, v8, v9}, Landroidx/appcompat/view/menu/hf0$e;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget v3, p1, Landroidx/appcompat/view/menu/gf0$e;->O:I

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/hf0$e;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/gf0$e;->B:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-boolean v3, p1, Landroidx/appcompat/view/menu/gf0$e;->A:Z

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/hf0$e;->c(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    :cond_f
    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->K:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_10
    iget-object v1, p1, Landroidx/appcompat/view/menu/gf0$e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_11

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget-boolean v3, p1, Landroidx/appcompat/view/menu/gf0$e;->Q:Z

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/hf0$g;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroidx/appcompat/view/menu/gf0$d;->a(Landroidx/appcompat/view/menu/gf0$d;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/hf0$g;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    :cond_11
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_12

    iget v0, p1, Landroidx/appcompat/view/menu/gf0$e;->P:I

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/hf0$h;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    :cond_12
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/gf0$e;->S:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Landroidx/appcompat/view/menu/hf0;->c:Landroidx/appcompat/view/menu/gf0$e;

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/gf0$e;->x:Z

    if-eqz p1, :cond_13

    iput v5, p0, Landroidx/appcompat/view/menu/hf0;->h:I

    goto :goto_8

    :cond_13
    iput v6, p0, Landroidx/appcompat/view/menu/hf0;->h:I

    :goto_8
    iget-object p1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    iget p1, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, -0x4

    iput p1, v2, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/hf0;->c:Landroidx/appcompat/view/menu/gf0$e;

    iget-object p1, p1, Landroidx/appcompat/view/menu/gf0$e;->w:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    const-string v0, "silent"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/hf0$a;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_14
    iget-object p1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    iget v0, p0, Landroidx/appcompat/view/menu/hf0;->h:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/hf0$e;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    :cond_15
    return-void

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public final b(Landroidx/appcompat/view/menu/gf0$a;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->d()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->l()Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/hf0$c;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->e()[Landroidx/appcompat/view/menu/oo0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->e()[Landroidx/appcompat/view/menu/oo0;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/oo0;->b([Landroidx/appcompat/view/menu/oo0;)[Landroid/app/RemoteInput;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v0, v4}, Landroidx/appcompat/view/menu/hf0$a;->c(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->c()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_2
    const-string v2, "android.support.allowGeneratedReplies"

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->b()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->b()Z

    move-result v3

    invoke-static {v0, v3}, Landroidx/appcompat/view/menu/hf0$d;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v3, "android.support.action.semanticAction"

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->f()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->f()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/appcompat/view/menu/hf0$f;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->j()Z

    move-result v3

    invoke-static {v0, v3}, Landroidx/appcompat/view/menu/hf0$g;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    :cond_3
    const/16 v3, 0x1f

    if-lt v2, v3, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->i()Z

    move-result v2

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/hf0$h;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    :cond_4
    const-string v2, "android.support.action.showsUserInterface"

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gf0$a;->g()Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hf0$a;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroidx/appcompat/view/menu/hf0$a;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/hf0$a;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public c()Landroid/app/Notification;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->c:Landroidx/appcompat/view/menu/gf0$e;

    iget-object v0, v0, Landroidx/appcompat/view/menu/gf0$e;->p:Landroidx/appcompat/view/menu/gf0$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/gf0$f;->b(Landroidx/appcompat/view/menu/df0;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/gf0$f;->e(Landroidx/appcompat/view/menu/df0;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hf0;->d()Landroid/app/Notification;

    move-result-object v2

    if-eqz v1, :cond_2

    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->c:Landroidx/appcompat/view/menu/gf0$e;

    iget-object v1, v1, Landroidx/appcompat/view/menu/gf0$e;->H:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/gf0$f;->d(Landroidx/appcompat/view/menu/df0;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/hf0;->c:Landroidx/appcompat/view/menu/gf0$e;

    iget-object v1, v1, Landroidx/appcompat/view/menu/gf0$e;->p:Landroidx/appcompat/view/menu/gf0$f;

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/gf0$f;->f(Landroidx/appcompat/view/menu/df0;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_5

    iput-object v1, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v2}, Landroidx/appcompat/view/menu/gf0;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/gf0$f;->a(Landroid/os/Bundle;)V

    :cond_6
    return-object v2
.end method

.method public d()Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hf0;->a:Landroid/content/Context;

    return-object v0
.end method
