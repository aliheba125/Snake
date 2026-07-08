.class public final synthetic Landroidx/appcompat/view/menu/ix1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic m:Landroidx/appcompat/view/menu/kx1;

.field public synthetic n:Ljava/lang/String;

.field public synthetic o:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ix1;->m:Landroidx/appcompat/view/menu/kx1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ix1;->n:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ix1;->o:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ix1;->m:Landroidx/appcompat/view/menu/kx1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ix1;->n:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ix1;->o:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/kx1;->u2(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
