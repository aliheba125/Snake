.class public final Landroidx/lifecycle/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/uj;

.field public final b:Landroidx/lifecycle/h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/uj;Landroidx/lifecycle/h;)V
    .locals 1

    const-string v0, "defaultLifecycleObserver"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/c;->a:Landroidx/appcompat/view/menu/uj;

    iput-object p2, p0, Landroidx/lifecycle/c;->b:Landroidx/lifecycle/h;

    return-void
.end method


# virtual methods
.method public c(Landroidx/appcompat/view/menu/a90;Landroidx/lifecycle/f$a;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/c$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/c;->a:Landroidx/appcompat/view/menu/uj;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uj;->d(Landroidx/appcompat/view/menu/a90;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/c;->a:Landroidx/appcompat/view/menu/uj;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uj;->a(Landroidx/appcompat/view/menu/a90;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/c;->a:Landroidx/appcompat/view/menu/uj;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uj;->b(Landroidx/appcompat/view/menu/a90;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/c;->a:Landroidx/appcompat/view/menu/uj;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uj;->g(Landroidx/appcompat/view/menu/a90;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/c;->a:Landroidx/appcompat/view/menu/uj;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uj;->e(Landroidx/appcompat/view/menu/a90;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/c;->a:Landroidx/appcompat/view/menu/uj;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/uj;->f(Landroidx/appcompat/view/menu/a90;)V

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/c;->b:Landroidx/lifecycle/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/h;->c(Landroidx/appcompat/view/menu/a90;Landroidx/lifecycle/f$a;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
