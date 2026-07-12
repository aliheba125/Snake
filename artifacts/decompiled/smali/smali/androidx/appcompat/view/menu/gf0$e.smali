.class public Landroidx/appcompat/view/menu/gf0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/gf0$e$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Landroid/os/Bundle;

.field public E:I

.field public F:I

.field public G:Landroid/app/Notification;

.field public H:Landroid/widget/RemoteViews;

.field public I:Landroid/widget/RemoteViews;

.field public J:Landroid/widget/RemoteViews;

.field public K:Ljava/lang/String;

.field public L:I

.field public M:Ljava/lang/String;

.field public N:J

.field public O:I

.field public P:I

.field public Q:Z

.field public R:Landroid/app/Notification;

.field public S:Z

.field public T:Ljava/lang/Object;

.field public U:Ljava/util/ArrayList;

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroid/app/PendingIntent;

.field public i:Landroid/widget/RemoteViews;

.field public j:Landroidx/core/graphics/drawable/IconCompat;

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Landroidx/appcompat/view/menu/gf0$f;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:[Ljava/lang/CharSequence;

.field public t:I

.field public u:I

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/gf0$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gf0$e;->n:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/gf0$e;->z:Z

    iput v1, p0, Landroidx/appcompat/view/menu/gf0$e;->E:I

    iput v1, p0, Landroidx/appcompat/view/menu/gf0$e;->F:I

    iput v1, p0, Landroidx/appcompat/view/menu/gf0$e;->L:I

    iput v1, p0, Landroidx/appcompat/view/menu/gf0$e;->O:I

    iput v1, p0, Landroidx/appcompat/view/menu/gf0$e;->P:I

    .line 5
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/gf0$e;->K:Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    iget-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    const/4 p2, -0x1

    .line 7
    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Landroidx/appcompat/view/menu/gf0$e;->m:I

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->U:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gf0$e;->Q:Z

    return-void
.end method

.method public static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public A(I)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/gf0$e;->F:I

    return-object p0
.end method

.method public B(J)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->b:Ljava/util/ArrayList;

    new-instance v1, Landroidx/appcompat/view/menu/gf0$a;

    invoke-direct {v1, p1, p2, p3}, Landroidx/appcompat/view/menu/gf0$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Landroid/app/Notification;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/hf0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/hf0;-><init>(Landroidx/appcompat/view/menu/gf0$e;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hf0;->c()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->D:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->D:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->D:Landroid/os/Bundle;

    return-object v0
.end method

.method public e(Z)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/gf0$e;->m(IZ)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->K:Ljava/lang/String;

    return-object p0
.end method

.method public g(I)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/gf0$e;->E:I

    return-object p0
.end method

.method public h(Landroid/app/PendingIntent;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->g:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public i(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/gf0$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/gf0$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public k(I)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public l(Landroid/app/PendingIntent;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final m(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method public n(I)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/gf0$e;->P:I

    return-object p0
.end method

.method public o(Landroid/graphics/Bitmap;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/gf0;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->j:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public p(III)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x2

    or-int/2addr p1, p2

    iput p1, v0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public q(Z)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/gf0$e;->z:Z

    return-object p0
.end method

.method public r(I)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/gf0$e;->l:I

    return-object p0
.end method

.method public s(Z)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/gf0$e;->m(IZ)V

    return-object p0
.end method

.method public t(I)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/gf0$e;->m:I

    return-object p0
.end method

.method public u(Z)Landroidx/appcompat/view/menu/gf0$e;
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/gf0$e;->n:Z

    return-object p0
.end method

.method public v(I)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public w(Landroid/net/Uri;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroidx/appcompat/view/menu/gf0$e$a;->b()Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/gf0$e$a;->c(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/gf0$e$a;->e(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/appcompat/view/menu/gf0$e$a;->a(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public x(Landroidx/appcompat/view/menu/gf0$f;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->p:Landroidx/appcompat/view/menu/gf0$f;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/gf0$e;->p:Landroidx/appcompat/view/menu/gf0$f;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/gf0$f;->g(Landroidx/appcompat/view/menu/gf0$e;)V

    :cond_0
    return-object p0
.end method

.method public y(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/appcompat/view/menu/gf0$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public z([J)Landroidx/appcompat/view/menu/gf0$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gf0$e;->R:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method
