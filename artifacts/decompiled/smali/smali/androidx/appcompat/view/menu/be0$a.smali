.class public Landroidx/appcompat/view/menu/be0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ae0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/be0;-><init>(Landroidx/appcompat/view/menu/be0$c;Landroidx/appcompat/view/menu/ae0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/be0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/be0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/be0$a;->a:Landroidx/appcompat/view/menu/be0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/be0$a;->a:Landroidx/appcompat/view/menu/be0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/be0;->b(Landroidx/appcompat/view/menu/be0;)Landroidx/appcompat/view/menu/be0$c;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/be0$a;->a:Landroidx/appcompat/view/menu/be0;

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/be0;->a(Landroidx/appcompat/view/menu/be0;Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/be0$c;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method
