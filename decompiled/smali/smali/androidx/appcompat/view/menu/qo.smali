.class public final synthetic Landroidx/appcompat/view/menu/qo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/ro;

.field public final synthetic n:Landroid/content/Intent;

.field public final synthetic o:Landroidx/appcompat/view/menu/bz0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/ro;Landroid/content/Intent;Landroidx/appcompat/view/menu/bz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/qo;->m:Landroidx/appcompat/view/menu/ro;

    iput-object p2, p0, Landroidx/appcompat/view/menu/qo;->n:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/appcompat/view/menu/qo;->o:Landroidx/appcompat/view/menu/bz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/qo;->m:Landroidx/appcompat/view/menu/ro;

    iget-object v1, p0, Landroidx/appcompat/view/menu/qo;->n:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/appcompat/view/menu/qo;->o:Landroidx/appcompat/view/menu/bz0;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/ro;->b(Landroidx/appcompat/view/menu/ro;Landroid/content/Intent;Landroidx/appcompat/view/menu/bz0;)V

    return-void
.end method
