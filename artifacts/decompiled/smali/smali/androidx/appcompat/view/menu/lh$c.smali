.class public final Landroidx/appcompat/view/menu/lh$c;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/lh;->c(Landroidx/appcompat/view/menu/kh;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final n:Landroidx/appcompat/view/menu/lh$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/lh$c;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/lh$c;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/lh$c;->n:Landroidx/appcompat/view/menu/lh$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ZLandroidx/appcompat/view/menu/kh$b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/lh$c;->a(ZLandroidx/appcompat/view/menu/kh$b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
