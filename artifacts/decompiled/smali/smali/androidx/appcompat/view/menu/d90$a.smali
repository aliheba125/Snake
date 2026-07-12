.class public final Landroidx/appcompat/view/menu/d90$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/d90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public m:Ljava/lang/Runnable;

.field public final synthetic n:Landroidx/appcompat/view/menu/d90;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d90;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d90$a;->n:Landroidx/appcompat/view/menu/d90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/d90$a;->m:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/d90$a;->m:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/rh;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/d90$a;->n:Landroidx/appcompat/view/menu/d90;

    invoke-static {v1}, Landroidx/appcompat/view/menu/d90;->G(Landroidx/appcompat/view/menu/d90;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, Landroidx/appcompat/view/menu/d90$a;->m:Ljava/lang/Runnable;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/d90$a;->n:Landroidx/appcompat/view/menu/d90;

    invoke-static {v1}, Landroidx/appcompat/view/menu/d90;->F(Landroidx/appcompat/view/menu/d90;)Landroidx/appcompat/view/menu/nh;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/d90$a;->n:Landroidx/appcompat/view/menu/d90;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/nh;->D(Landroidx/appcompat/view/menu/kh;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d90$a;->n:Landroidx/appcompat/view/menu/d90;

    invoke-static {v0}, Landroidx/appcompat/view/menu/d90;->F(Landroidx/appcompat/view/menu/d90;)Landroidx/appcompat/view/menu/nh;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/d90$a;->n:Landroidx/appcompat/view/menu/d90;

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/view/menu/nh;->A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V

    return-void
.end method
