import { shop } from "@/lib/shop";

export default function Logo() {
  const basePath = process.env.NEXT_PUBLIC_BASE_PATH || "";
  return (
    <div className="logo-wrap">
      {/* eslint-disable-next-line @next/next/no-img-element */}
      <img className="logo-img" src={`${basePath}/logo.png`} alt={`${shop.name} ${shop.area}`} />
      <h1 className="logo-title">{shop.name.toUpperCase()}</h1>
      <p className="logo-area">
        {shop.area.toUpperCase()} · {shop.city.toUpperCase()}
      </p>
      <div className="logo-line" aria-hidden="true" />
    </div>
  );
}
