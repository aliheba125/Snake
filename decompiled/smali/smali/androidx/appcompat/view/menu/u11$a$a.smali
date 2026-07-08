.class public Landroidx/appcompat/view/menu/u11$a$a;
.super Landroidx/appcompat/view/menu/t11;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/u11$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/o4;

.field public final synthetic b:Landroidx/appcompat/view/menu/u11$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/u11$a;Landroidx/appcompat/view/menu/o4;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/u11$a$a;->b:Landroidx/appcompat/view/menu/u11$a;

    iput-object p2, p0, Landroidx/appcompat/view/menu/u11$a$a;->a:Landroidx/appcompat/view/menu/o4;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/t11;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/appcompat/view/menu/s11;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/u11$a$a;->a:Landroidx/appcompat/view/menu/o4;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u11$a$a;->b:Landroidx/appcompat/view/menu/u11$a;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u11$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/nu0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/s11;->S(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    return-void
.end method
