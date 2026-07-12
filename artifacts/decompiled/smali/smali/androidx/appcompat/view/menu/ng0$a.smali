.class public final Landroidx/appcompat/view/menu/ng0$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ng0;->a(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/fw;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/appcompat/view/menu/kh;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/kh;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ng0$a;->n:Landroidx/appcompat/view/menu/fw;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ng0$a;->o:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ng0$a;->p:Landroidx/appcompat/view/menu/kh;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/view/menu/ng0$a;->n:Landroidx/appcompat/view/menu/fw;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ng0$a;->o:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ng0$a;->p:Landroidx/appcompat/view/menu/kh;

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/ng0;->b(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/kh;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ng0$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method
