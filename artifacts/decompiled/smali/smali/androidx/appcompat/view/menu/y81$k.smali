.class public Landroidx/appcompat/view/menu/y81$k;
.super Landroidx/appcompat/view/menu/y81$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final q:Landroidx/appcompat/view/menu/y81;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/m91;->a()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/y81;->t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/y81$k;->q:Landroidx/appcompat/view/menu/y81;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/y81$j;-><init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/y81$j;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$j;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public g(I)Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/appcompat/view/menu/y81$n;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/n91;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/h50;->d(Landroid/graphics/Insets;)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1
.end method
