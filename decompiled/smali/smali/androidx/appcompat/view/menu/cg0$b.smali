.class public final Landroidx/appcompat/view/menu/cg0$b;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/cg0;-><init>(Ljava/lang/Runnable;Landroidx/appcompat/view/menu/pf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/cg0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cg0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/cg0$b;->n:Landroidx/appcompat/view/menu/cg0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h7;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0$b;->n:Landroidx/appcompat/view/menu/cg0;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/cg0;->b(Landroidx/appcompat/view/menu/cg0;Landroidx/appcompat/view/menu/h7;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/h7;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/cg0$b;->a(Landroidx/appcompat/view/menu/h7;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method
