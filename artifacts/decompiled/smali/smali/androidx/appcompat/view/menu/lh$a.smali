.class public final Landroidx/appcompat/view/menu/lh$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/lh;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh;Z)Landroidx/appcompat/view/menu/kh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final n:Landroidx/appcompat/view/menu/lh$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/lh$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/lh$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/lh$a;->n:Landroidx/appcompat/view/menu/lh$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/kh;
    .locals 0

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/kh;->o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/kh;

    check-cast p2, Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/lh$a;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method
