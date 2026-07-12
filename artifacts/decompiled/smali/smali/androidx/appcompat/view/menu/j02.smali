.class public final synthetic Landroidx/appcompat/view/menu/j02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic m:Landroidx/appcompat/view/menu/d02;

.field public synthetic n:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/d02;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/j02;->m:Landroidx/appcompat/view/menu/d02;

    iput-object p2, p0, Landroidx/appcompat/view/menu/j02;->n:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/j02;->m:Landroidx/appcompat/view/menu/d02;

    iget-object v1, p0, Landroidx/appcompat/view/menu/j02;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/d02;->F(Landroid/os/Bundle;)V

    return-void
.end method
