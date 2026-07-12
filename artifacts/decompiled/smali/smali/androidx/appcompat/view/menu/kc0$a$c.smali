.class public final Landroidx/appcompat/view/menu/kc0$a$c;
.super Landroidx/appcompat/view/menu/ly0;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/kc0$a;->f(Landroid/net/Uri;Landroid/view/InputEvent;)Landroidx/appcompat/view/menu/j90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public q:I

.field public final synthetic r:Landroidx/appcompat/view/menu/kc0$a;

.field public final synthetic s:Landroid/net/Uri;

.field public final synthetic t:Landroid/view/InputEvent;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kc0$a;Landroid/net/Uri;Landroid/view/InputEvent;Landroidx/appcompat/view/menu/xg;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kc0$a$c;->r:Landroidx/appcompat/view/menu/kc0$a;

    iput-object p2, p0, Landroidx/appcompat/view/menu/kc0$a$c;->s:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/appcompat/view/menu/kc0$a$c;->t:Landroid/view/InputEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Landroidx/appcompat/view/menu/ly0;-><init>(ILandroidx/appcompat/view/menu/xg;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;
    .locals 3

    new-instance p1, Landroidx/appcompat/view/menu/kc0$a$c;

    iget-object v0, p0, Landroidx/appcompat/view/menu/kc0$a$c;->r:Landroidx/appcompat/view/menu/kc0$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kc0$a$c;->s:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/appcompat/view/menu/kc0$a$c;->t:Landroid/view/InputEvent;

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/appcompat/view/menu/kc0$a$c;-><init>(Landroidx/appcompat/view/menu/kc0$a;Landroid/net/Uri;Landroid/view/InputEvent;Landroidx/appcompat/view/menu/xg;)V

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/th;

    check-cast p2, Landroidx/appcompat/view/menu/xg;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/kc0$a$c;->o(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/kc0$a$c;->q:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/kc0$a$c;->r:Landroidx/appcompat/view/menu/kc0$a;

    invoke-static {p1}, Landroidx/appcompat/view/menu/kc0$a;->d(Landroidx/appcompat/view/menu/kc0$a;)Landroidx/appcompat/view/menu/jc0;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/kc0$a$c;->s:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/appcompat/view/menu/kc0$a$c;->t:Landroid/view/InputEvent;

    iput v2, p0, Landroidx/appcompat/view/menu/kc0$a$c;->q:I

    invoke-virtual {p1, v1, v3, p0}, Landroidx/appcompat/view/menu/jc0;->c(Landroid/net/Uri;Landroid/view/InputEvent;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public final o(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/kc0$a$c;->a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/kc0$a$c;

    sget-object p2, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/kc0$a$c;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
