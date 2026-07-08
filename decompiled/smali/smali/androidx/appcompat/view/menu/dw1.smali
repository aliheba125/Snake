.class public final Landroidx/appcompat/view/menu/dw1;
.super Landroidx/appcompat/view/menu/pa0;
.source "SourceFile"


# instance fields
.field public final synthetic i:Landroidx/appcompat/view/menu/rv1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/rv1;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/dw1;->i:Landroidx/appcompat/view/menu/rv1;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/pa0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroidx/appcompat/view/menu/dw1;->i:Landroidx/appcompat/view/menu/rv1;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/rv1;->z(Landroidx/appcompat/view/menu/rv1;Ljava/lang/String;)Landroidx/appcompat/view/menu/lh1;

    move-result-object p1

    return-object p1
.end method
