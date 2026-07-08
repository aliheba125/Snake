.class public final synthetic Landroidx/appcompat/view/menu/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/gw0$d;

.field public final synthetic n:Landroidx/appcompat/view/menu/ck$g;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/dk;->m:Landroidx/appcompat/view/menu/gw0$d;

    iput-object p2, p0, Landroidx/appcompat/view/menu/dk;->n:Landroidx/appcompat/view/menu/ck$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/dk;->m:Landroidx/appcompat/view/menu/gw0$d;

    iget-object v1, p0, Landroidx/appcompat/view/menu/dk;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ck$g;->j(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V

    return-void
.end method
