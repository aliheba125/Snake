.class public Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final e:Landroidx/appcompat/view/menu/gh;


# instance fields
.field public a:Landroidx/appcompat/view/menu/gh;

.field public b:Landroidx/appcompat/view/menu/gh;

.field public c:Landroidx/appcompat/view/menu/gh;

.field public d:Landroidx/appcompat/view/menu/gh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/e;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Landroidx/appcompat/view/menu/gh;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Landroidx/appcompat/view/menu/gh;

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Landroidx/appcompat/view/menu/gh;

    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Landroidx/appcompat/view/menu/gh;

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Landroidx/appcompat/view/menu/gh;

    return-void
.end method

.method public static a(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 3

    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Landroidx/appcompat/view/menu/gh;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Landroidx/appcompat/view/menu/gh;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Landroidx/appcompat/view/menu/gh;

    invoke-direct {v0, v1, v2, v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/m61;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 3

    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Landroidx/appcompat/view/menu/gh;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Landroidx/appcompat/view/menu/gh;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Landroidx/appcompat/view/menu/gh;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;)V

    return-object v0
.end method

.method public static d(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 3

    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Landroidx/appcompat/view/menu/gh;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Landroidx/appcompat/view/menu/gh;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Landroidx/appcompat/view/menu/gh;

    invoke-direct {v0, v1, v1, v2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;)V

    return-object v0
.end method

.method public static e(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/m61;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static f(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 3

    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Landroidx/appcompat/view/menu/gh;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Landroidx/appcompat/view/menu/gh;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Landroidx/appcompat/view/menu/gh;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;Landroidx/appcompat/view/menu/gh;)V

    return-object v0
.end method
